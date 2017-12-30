package com.mooc.service.imp;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mooc.domain.Student;
import com.mooc.service.IStudentService;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application.xml")
public class StudentServiceImpTest {

	
	@Autowired
	IStudentService service;
	@Test
	public void selectAll(){
		List<Student> students = service.selectAll();
		System.out.println(students);
	}
	@Test
	public void selectById(){
		Student stu = service.selectByPrimaryKey(1L);
		System.out.println(stu);
	}
	@Test
	public void deleteById(){
		int i = service.deleteByPrimaryKey(5L);
		System.out.println(i);
	}
	@Test
	public void queryByCountry(){
		List<Student> list = service.selectByCountry("英国");
		System.out.println(list);
	}
	@Test
	public void queryOneStudent(){
		Student student = service.selectByPrimaryKey(1L);
		System.out.println(student);
	}
	@Test
	public void updateStu(){
		Student stu = new Student(4L,"rose",null,"23473sdaf","123321","女",null,"英国",null,"2132142","qq","wohens",null,null);
	    service.updateByPrimaryKey(stu);
	    
	}
}
