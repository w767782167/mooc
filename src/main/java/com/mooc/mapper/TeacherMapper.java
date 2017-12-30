package com.mooc.mapper;

import com.mooc.domain.Teacher;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface TeacherMapper {
	int deleteByPrimaryKey(Long id);

	int insert(Teacher record);

	Teacher selectByPrimaryKey(Long id);

	List<Teacher> selectAll();

	int updateByPrimaryKey(Teacher record);

	Teacher queryEmailName(String email);

	Teacher queryemail(@Param("email")String email,@Param("password") String password);

	List<Teacher> selectnativeLang(String nativeLang);

}