package com.great.handler;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.great.bean.User;
import com.great.service.UserServiceImpl;

@Component
@RequestMapping("/user")
public class UserAction {
	@Autowired
	private UserServiceImpl userservice;
//	@RequestMapping("/queryAll.action")
//	public ModelAndView  queryAll(HttpServletRequest request) {
//		ModelAndView modelandvied=new ModelAndView();
//		List<User> list=userservice.queryAllUser();
//		//request.setAttribute("userList", list);
//		modelandvied.addObject("userList",list);
//		modelandvied.setViewName("forward:/WEB-INF/userList.jsp");
//		return modelandvied;
//	}
//	@RequestMapping(value="/startUser.action" ,method = RequestMethod.POST, produces = "application/json;charset=utf-8")
//	//ajax请求，返回json
//	public @ResponseBody String startUser(HttpServletRequest request,String userName) {
//		ModelAndView modelandvied=new ModelAndView();
//		int count=userservice.startUser(userName, "启用");
//			if(count>0) {
//			return "1";
//			}else {	
//				return "0";
//			}
//		
//	}
//	@RequestMapping(value="/stopUser.action" ,method = RequestMethod.POST, produces = "application/json;charset=utf-8")
//	public @ResponseBody String stopUser(HttpServletRequest request,String userName) {
//		ModelAndView modelandvied=new ModelAndView();
//		int count=userservice.stopUser(userName, "禁用");
//			if(count>0) {
//				return "1";
//			}else {
//				return "0";
//			}
//	}
	@RequestMapping(value="/login.action",method = RequestMethod.POST)
	public  ModelAndView userLogin(HttpServletRequest request,String userName,String pwd,String code) {
		User user=new User();
		ModelAndView modelandvied=new ModelAndView();
		user=userservice.userLogin(userName, pwd);
		HttpSession session=request.getSession();
		String mycode=((String)session.getAttribute("keyCode")).toLowerCase();
		if(mycode.equals(code.toLowerCase())) {
		if(user!=null) {
			session.setAttribute("user", user);
			modelandvied.setViewName("forward:/backmain.jsp");
		}else {
			modelandvied.setViewName("forward:/backlogin.jsp");
		}
		}else {
			modelandvied.setViewName("forward:/backlogin.jsp");
		}
		return modelandvied;
	}
//	@RequestMapping(value = "/uploadFile.action", method = RequestMethod.POST,produces = "application/json;charset=utf-8")
//	public @ResponseBody String fileact(@RequestBody MultipartFile myfile) {
//		String filename = myfile.getOriginalFilename();
//		System.out.println("获取到的文件名:" + filename);
//		try {
//			myfile.transferTo(new File("D:/testupload//" + filename));
//		} catch (IllegalStateException | IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return "1";
//	}
	@RequestMapping(value="/mytest.action",method = RequestMethod.POST)
	public ModelAndView turnrow(HttpServletRequest request) {
		ModelAndView model=new ModelAndView();
		model.setViewName("redirect:/center.jsp");
		return model;
	}
}
