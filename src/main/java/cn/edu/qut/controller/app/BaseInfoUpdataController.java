package cn.edu.qut.controller.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.qut.entity.Seller;
import cn.edu.qut.entity.app.Result;
import cn.edu.qut.service.SellerService;

@Controller
@RequestMapping(value="/app")
public class BaseInfoUpdataController {
	@Autowired
	private SellerService sellerService;
	
	@RequestMapping(value="/baseuserinfoandroid")
	@ResponseBody
	public Result baseInfoUpdata(Seller seller){
		boolean flag = sellerService.update(seller);
		Result result = new Result();
		if(flag){
			result.setSuccess("true");
			result.setMessage("修改成功");
		}else{
			result.setSuccess("true");
			result.setMessage("修改失败");
		}
		
		return result;
	}
	
	@RequestMapping(value="/passwinfoandroid")
	@ResponseBody
	public Result passwInfoUpdata(Seller seller){
//		boolean flag = sellerService.update(seller);
		Result result = new Result();
//		if(flag){
//			result.setSuccess("true");
//			result.setMessage("修改成功");
//		}else{
//			result.setSuccess("true");
//			result.setMessage("修改失败");
//		}
//		
		return result;
	}
}
