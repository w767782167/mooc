package com.mooc.web.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mooc.domain.Teacher;
import com.mooc.service.IStudentService;
import com.mooc.service.ITeacherService;
import com.mooc.util.StringUtils;

@Controller
public class TeacherController {

	@Autowired
	ITeacherService service;

	@RequestMapping("/teacherController")
	public void techReg(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		String param = req.getParameter("param");

		System.out.println(param);

		try {
			if (StringUtils.hasLength(param)) {
				if (param.equals("list")) {
					showAllTeachers(req, resp);
				} else if (param.equals("del")) {
					deleteTeacher(req, resp);
				}

			}
		} catch (Exception e) {
		}

	}

	private void deleteTeacher(HttpServletRequest req, HttpServletResponse resp)
			throws Exception, IOException {
		// TODO Auto-generated method stub

		String id1 = req.getParameter("cmd");
		System.out.println(id1);

		int ret = service.deleteByPrimaryKey(Long.valueOf(id1));

		System.out.println(ret);
		// 3.刷新页面
		if (ret > 0) {
			req.getRequestDispatcher("/teacherController?param=list").forward(
					req, resp);
		} else {

		}

	}

	
	public void showAllTeachers(HttpServletRequest req, HttpServletResponse resp) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		
		List<Teacher> tech = service.selectAll();
		
		System.out.println(tech);
		
		
		if (tech != null) {
			req.setAttribute("msg", tech);
			try {
				req.getRequestDispatcher("/admin/teacher-mgmt.jsp").forward(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
	
	// 查询所有teacher
	@RequestMapping("/teachers")
	public void showTeachers(HttpServletRequest req, HttpServletResponse resp) {

		List<Teacher> teachers = service.selectAll();
		if (teachers != null) {
			req.setAttribute("teachers", teachers);
			try {
				req.getRequestDispatcher("/teachers.jsp").forward(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
	// 查询当前id的teacher
	@RequestMapping("/tea")
	public void getOneTeacher(HttpServletRequest req, HttpServletResponse resp) {
		// 获取id字段
		String string = req.getParameter("teacherid");
		// // 转类型
		long id = Long.parseLong(string);
		Teacher teacher = service.selectByPrimaryKey(id);
		// Teacher teacher = service.selectByPrimaryKey(1L);
		req.setAttribute("teacher", teacher);
		if (teacher != null) {
			req.setAttribute("teachers", teacher);
			try {
				req.getRequestDispatcher("/teacher.jsp").forward(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@RequestMapping("/selectbynativeLang")
	public void showAllTeacherby(HttpServletRequest req,
			HttpServletResponse resp) throws Exception {
		// 设置乱码问题
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		// resp.setCharacterEncoding("utf-8");

		String nativeLang = req.getParameter("nativeLang");
		// System.out.println(nativeLang);
		if (nativeLang.equals("所有语种")) {
			req.getRequestDispatcher("/teachers").forward(req, resp);
		}
		List<Teacher> selectbynativeLang = service.selectnativeLang(nativeLang);
		if (selectbynativeLang != null) {
			req.setAttribute("teachers", selectbynativeLang);
			req.setAttribute("nativeLang", nativeLang);
			try {
				req.getRequestDispatcher("/teachers.jsp").forward(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
