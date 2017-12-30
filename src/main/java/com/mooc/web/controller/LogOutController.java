package com.mooc.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LogOutController {
	
	
	@RequestMapping("/logout")
	public void userLogout(HttpServletRequest req,HttpServletResponse resp) throws Exception {
		
		req.getSession().invalidate();
		resp.sendRedirect("/mooc/index.jsp");
		
		
	}
	

}
