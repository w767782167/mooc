package com.mooc.web.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mooc.service.IRootService;
import com.mooc.util.StringUtils;

@Controller
public class RootController {
	
	@Autowired
	IRootService service;
	
	@RequestMapping("/rootController")
	public void rootCtrl(HttpSession session,HttpServletRequest req,HttpServletResponse resp) {
		String param = req.getParameter("param");
		System.out.println(param);
		
		try {
			if(StringUtils.hasLength(param)){  // param has value
				if(param.equals("logout")){
					logOut(req, resp);
				} 
				
				
				
			}
			
		} catch (Exception e) {

		
		}
		
		
		
	}

	

	//logout
	protected void logOut(HttpServletRequest req,HttpServletResponse resp) throws Exception {
		 //1.logout Session
        req.getSession().invalidate();
        //2.return to index.jsp
        resp.sendRedirect(req.getContextPath()+"/admin/index.jsp");
		
		
	}
	
	
	
	
	
	
	
	

}
