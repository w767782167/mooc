package com.mooc.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import com.mooc.domain.Student;
import com.mooc.page.PageResult;
import com.mooc.query.QueryObject;

public interface IStudentService {
	Student queryByLogin(@Param("email")String email, @Param("password")String password);
	 
	Student queryByName(String sfullname);
	int insert(Student record);
	int updateByPrimaryKey(Student student);

	int deleteByPrimaryKey(Long id);

	Student selectByPrimaryKey(Long id);

	List<Student> selectAll();

	
	PageResult selectByPage(QueryObject qo);
	
	List<Student> selectByCountry(String country);
	
	

}
