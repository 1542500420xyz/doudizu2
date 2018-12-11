package com.great.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.great.bean.User;

public class LoginIntercptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
			String url=request.getRequestURI();
			User user=(User)request.getSession().getAttribute("user");
			if(user!=null) {
				return true;
			}
			String realUrl=request.getContextPath();
			response.sendRedirect(realUrl+"/backlogin.jsp");
		return false;
	}
}
