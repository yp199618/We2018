package cn.edu.qut.controller.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/app")
public class HomeTextConteroller {
	
	@RequestMapping(value = "/homeandroid",method = RequestMethod.POST)
    @ResponseBody
	public String getHomeText(){
		String str = new String("欢迎使用助微力app，助微力开发团队祝您心想事成、财源广进");
		return str;
	} 
}
