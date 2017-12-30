package com.mooc.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mooc.domain.Teacher;


public interface ITeacherService {
	List<Teacher> selectnativeLang(String nativeLang);
	List<Teacher> selectAll();
	Teacher selectByPrimaryKey(Long id);
	
	
	
	int deleteByPrimaryKey(Long id);
	
	int insert(Teacher record);
	
	Teacher queryEmailName(String email);
	

	int updateByPrimaryKey(Teacher record);
	Teacher queryemail(@Param("email")String email, @Param("password")String password);

	

}
