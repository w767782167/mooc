package com.mooc.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mooc.service.IStudentService;
import com.mooc.service.ITeacherService;

import com.mooc.domain.Student;
import com.mooc.domain.Teacher;

import com.mooc.util.StringUtils;

@Controller
public class RegisterController {



	@Autowired
	IStudentService stuService;

	@Autowired
	ITeacherService techService;

	@RequestMapping("/stuReg")
	public void stuReg(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		Student student = new Student();
		String semail = req.getParameter("form-email");
		String password = req.getParameter("form-password");
		String repwd = req.getParameter("form-repassword");
		System.out.println(repwd + "," + password);
		Student stud = stuService.queryByName(semail);
		if (!repwd.equals(password)) {
			req.setAttribute("msg", "亲，两次密码输入不一样，请重新输入");
			req.getRequestDispatcher("/register.jsp").forward(req, resp);
		} else {
			if (stud != null) {
				req.setAttribute("msg", "亲，用邮箱已存在，请重新输入");
				req.getRequestDispatcher("/register.jsp").forward(req, resp);
			} else {
				student.setEmail(semail);
				student.setPassword(password);
				int record = stuService.insert(student);
				// int record= service.updateByPrimaryKey(stud.getId());
				System.out.println("insert---");
				System.out.println(record);
				if (record > 0) {
					resp.sendRedirect("/mooc/login.jsp");
				}
				System.out.println(semail);
			}
		}

	}

	@RequestMapping("/techReg")
	@ResponseBody
	public void techReg(HttpServletRequest req, HttpServletResponse resp)
			throws Exception, Exception {
		System.out.println(techService);
		
	
		Teacher tech = new Teacher();
		
		String email = req.getParameter("tec-email");
		String password = req.getParameter("password");
		String repwd = req.getParameter("repassword");
		
		System.out.println(email);
		System.out.println(password);
		System.out.println(repwd);
		
		
		
		Teacher emailName = techService.queryEmailName(email);
		System.out.println("++++6+++++++++++++++++++++++"+emailName);
		
		if(!repwd.equals(password)){
			req.setAttribute("msg", "2次密码不一样请重新输入");
			req.getRequestDispatcher("/tech-reg.jsp").forward(req, resp);
		}else {
			if(emailName != null){
			req.setAttribute("msg", "亲，用邮箱已存在，请重新输入");
			req.getRequestDispatcher("/tech-reg.jsp").forward(req, resp);
		}else{
			tech.setEmail(email);
			tech.setPassword(password);
			int insert = techService.insert(tech);	
			if(insert>0){
				resp.sendRedirect("/mooc/login.jsp");
			}
		}
			
			
		}
		


	}

}
