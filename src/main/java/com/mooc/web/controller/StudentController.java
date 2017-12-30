package com.mooc.web.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.apache.commons.io.FilenameUtils;

import com.alibaba.fastjson.JSON;
import com.mooc.domain.Student;
import com.mooc.service.IStudentService;
import com.mooc.util.Context;
import com.mooc.util.StringUtils;

@Controller
public class StudentController {
	@Autowired
	@SuppressWarnings("deprecation")
	IStudentService service;

	@RequestMapping("/modifyStu")
	public void ModifyStudent(MultipartFile file, HttpServletRequest req,HttpServletResponse resp)
			throws Exception {

		String fullname = req.getParameter("form-realname");
		String sex = req.getParameter("sex");
		String email = req.getParameter("form-email");
		String password = req.getParameter("form-password");
		String tel = req.getParameter("form-tel");
		String loc = req.getParameter("form-loc");
		String birthday = req.getParameter("form-birth");
		String native_lang = req.getParameter("native_lang");
		String skype = req.getParameter("skype");
		String introduct = req.getParameter("introduct");
		String member = req.getParameter("member");
		System.out.println(birthday);
		Student stud = (Student) req.getSession().getAttribute(
				Context.USER_IN_SESSION);
		/* 对接session中获得ID */
		Long id = stud.getId();
		System.out.println("id="+id);

		// 处理头像
		String realPath = req.getRealPath("/upload");
		String string = UUID.randomUUID().toString();// 随机名
		String filename = file.getOriginalFilename();// 文件名
		String extension = FilenameUtils.getExtension(filename);// 后缀名
		/*
		 * req.setAttribute("string", string); req.setAttribute("extension",
		 * extension);
		 */

		File file1 = new File(realPath, string + "." + extension);
		System.out.println(file1 + "ddd");

		String imgSrc = "/pic/" + string + "." + extension;
		System.out.println(imgSrc);

		Student student = new Student();
		student.setId(id);
		student.setFullname(fullname);
		student.setHeadimg(imgSrc);
		student.setEmail(email);
		student.setPassword(password);
		student.setSex(sex);
		student.setNativeLang(native_lang);
		student.setSkype(skype);
		student.setIntroduction(introduct);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		Date birth = dateFormat.parse(birthday);
		// System.out.println(birth.toLocaleString().split(" ")[0]);//切割掉不要的时分秒数据
		student.setBirthday(birth);
		student.setCountry(loc);
		student.setTel(tel);
		System.out.println(student);
		int record = service.updateByPrimaryKey(student);
		System.out.println(record);
		if (record > 0) {
			System.out.println("修改成功");
		}
		System.out.println(realPath);
		System.out.println(file.getContentType());
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		System.out.println(fullname);
		InputStream is = null;
		OutputStream os = null;
		try {
			is = file.getInputStream();
			os = new FileOutputStream(file1);
			IOUtils.copy(is, os);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (is != null) {
				try {
					is.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (os != null) {
				try {
					os.close();

				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		req.getRequestDispatcher("/index.jsp").forward(req, resp);
		
		
	}
	
	
	
	@RequestMapping("/studentController")
	 public void Student(HttpServletRequest req,HttpServletResponse resp){
		String parameter = req.getParameter("param");
		
		if (StringUtils.hasLength(parameter)) {
			if (parameter.equals("list")) {
				showAllStu(req, resp);
			}else if (parameter.equals("delete")) {
				deleteById(req, resp);
			}else if (parameter.equals("update")) {
				update(req, resp);
			}else if (parameter.equals("country")) {
				queryByCountry(req, resp);
			}else if (parameter.equals("selectOne")) {
				queryOneStudent(req, resp);
			}
		} else {
			showAllStu(req, resp);
		}
	}
	public void showAllStu(HttpServletRequest req,HttpServletResponse resp){
		List<Student> students = service.selectAll();
		if(students!=null){
			req.setAttribute("showAllStu", students);
			try {
				req.getRequestDispatcher("/admin/student-mgmt.jsp").forward(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
		
	}
	public void deleteById(HttpServletRequest req,HttpServletResponse resp){
		Long id = Long.valueOf(req.getParameter("stuId"));
		
		int i = service.deleteByPrimaryKey(id);
		try {
			resp.sendRedirect("/mooc/studentController?param=list");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void update(HttpServletRequest req,HttpServletResponse resp){
		
		Long id = Long.valueOf(req.getParameter("id"));
		
		String fullname = req.getParameter("fullname");
	
		String email = req.getParameter("email");

		String password = req.getParameter("password");

		/*Date birthday = Date.valueOf(req.getParameter("birthday"));*/

		String country = req.getParameter("country");

		String tel = req.getParameter("tel");

		String sex = req.getParameter("sex");

		String skype = req.getParameter("skype");

		String introduct = req.getParameter("introduct");
	
	    Student stu = new Student();
	    stu.setId(id);
	    stu.setFullname(fullname);
	    stu.setEmail(email);
	    stu.setPassword(password);
	    /*stu.setBirthday(birthday);*/
	    stu.setCountry(country);
	    stu.setTel(tel);
	    stu.setSex(sex);
	    stu.setSkype(skype);
	    stu.setIntroduction(introduct);
	    System.out.println(stu);
		try {
			service.updateByPrimaryKey(stu);
			resp.sendRedirect("/mooc/studentController?param=list");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void queryByCountry(HttpServletRequest req,HttpServletResponse resp){
		
		String country = req.getParameter("countrySel");
		
		List<Student> queryByCountry = service.selectByCountry(country);
		if(queryByCountry!=null){
			req.setAttribute("showAllStu", queryByCountry);
			try {
				req.getRequestDispatcher("/admin/student-mgmt.jsp").forward(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
	    
	}
	@ResponseBody
	public void queryOneStudent(HttpServletRequest req,HttpServletResponse resp){
		
		Long stuId = Long.valueOf(req.getParameter("stuId"));
		System.out.println(stuId);
		
		Student student = service.selectByPrimaryKey(stuId);
		resp.setContentType( "json/html;charset=UTF-8");
		System.out.println(student);
		//JSONArray array = new JSONArray();
		
		
		PrintWriter out;
		try {
			out = resp.getWriter();
			String jsonString = JSON.toJSONString(student);
			resp.setContentType( "text/html;charset=UTF-8");
			System.out.println(jsonString);
			out.print(jsonString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}
}
