package cn.edu.qut.shiro.credentials;

import java.util.concurrent.atomic.AtomicInteger;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;

//密码重试5次次数限制 
public class RetryLimitHashedCredentialsMatcher extends HashedCredentialsMatcher{
	private Cache<String,AtomicInteger> passwordRetryCache;
	
	public RetryLimitHashedCredentialsMatcher(CacheManager cacheManager){
		passwordRetryCache=cacheManager.getCache("passwordRetryCache");
	}

	@Override
	public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
		String username=(String)token.getPrincipal();
		AtomicInteger retryCount=passwordRetryCache.get(username);
		if(retryCount==null){
			retryCount=new AtomicInteger(0);
			passwordRetryCache.put(username, retryCount);
		}
		if(retryCount.incrementAndGet()>5){
			throw new ExcessiveAttemptsException();
		}
		/*System.out.println("token:"+token);
		System.out.println("info: "+info);
		Object tokenHashedCredentials = hashProvidedCredentials(token, info);
        Object accountCredentials = getCredentials(info);
        System.out.println("系数1："+tokenHashedCredentials);
        System.out.println("系数2："+ accountCredentials);*/
        
		boolean matches= super.doCredentialsMatch(token, info);

		if(matches){
			passwordRetryCache.remove(username);
		}
		return matches;
	}
	
	
}
