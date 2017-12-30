package com.mooc.web.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mooc.domain.Root;
import com.mooc.domain.Student;
import com.mooc.domain.Teacher;
import com.mooc.service.IRootService;
import com.mooc.service.IStudentService;
import com.mooc.service.ITeacherService;
import com.mooc.util.Context;

@Controller
public class LoginController {

	@Autowired
	private IStudentService stuService;
	
	@Autowired
	private IRootService rootService;
	
	@Autowired
	private ITeacherService teacherService;
	
	@RequestMapping("/login")
	public void userLogin(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String param = req.getParameter("role");
		System.out.println("param="+param);
		if (StringUtils.hasLength(param)) {  
			if (param.equals("student")) {   //学生登陆
				String email = req.getParameter("form-username");
				String password = req.getParameter("form-password");
				String rand = req.getParameter("form-code");
				System.out.println(email+","+password+","+rand);
				String randcode = (String) req.getSession().getAttribute(
						Context.RANDOMCODE_IN_SESSION);
				if (rand.equals(randcode)) {
					Student student = stuService.queryByLogin(email, password);
					System.out.println(student);
					if (student != null) {
						//req.getSession().invalidate();
						req.getSession().setAttribute(Context.USER_IN_SESSION,
								student);

						req.getRequestDispatcher("/index.jsp").forward(req,
								resp);

					} else {
						req.setAttribute("msg", "用户邮箱或密码输入错误，请重新输入!");
						req.getRequestDispatcher("/login.jsp").forward(req,
								resp);
					}
				} else {
					req.setAttribute("msg", "验证码输入错误，请重新输入!");
					req.getRequestDispatcher("/login.jsp").forward(req, resp);
				}
			} else if(param.equals("teacher")) {   //教师登陆
				
				String email = req.getParameter("form-username");
				String password = req.getParameter("form-password");
				String rand = req.getParameter("form-code");
				
				System.out.println(email+","+password+","+rand);
				
				String randcode = (String) req.getSession().getAttribute(
						Context.RANDOMCODE_IN_SESSION);
				if (rand.equals(randcode)) {
					Teacher teacher = teacherService.queryemail(email, password);
					System.out.println(teacher);
					if (teacher != null) {
						//req.getSession().invalidate();
						
						req.getSession().setAttribute(Context.USER_IN_SESSION,
								teacher);

						req.getRequestDispatcher("/index.jsp").forward(req,
								resp);

					} else {
						req.setAttribute("msg", "用户邮箱或密码输入错误，请重新输入!");
						req.getRequestDispatcher("/login.jsp").forward(req,
								resp);
					}
				} else {
					req.setAttribute("msg", "验证码输入错误，请重新输入!");
					req.getRequestDispatcher("/login.jsp").forward(req, resp);
				}
				
				
				
				
				
				
				
				
				
			}
			
			
			
		}

		// service.queryByLogin(email, password);
	}

	@RequestMapping("/rootLogin")
	@ResponseBody
	public Map<String,Object> rootLogin(String rootname,String rootpwd,HttpSession session) {
		/*String rootname = req.getParameter("rootname");
		String password = req.getParameter("rootpwd");*/
		
		System.out.println(rootname+","+rootpwd);
		Root root = rootService.queryRootByLogin(rootname,rootpwd);
		
		HashMap<String, Object> result = new HashMap<String,Object>();
		if(root!=null){
			session.setAttribute(Context.ROOT_IN_SESSION, root); 
			result.put("success", true); 
			result.put("msg", "login success!");
		 }else{
			result.put("success", false); 
			result.put("msg", "login failed!"); 
		 }
		 System.out.println(result);
		 return result;
		
	}
	
	
	
	

}
