package com.mooc.mapper;


import com.mooc.domain.Student;
import com.mooc.query.QueryObject;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface StudentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Student stu);

    Student selectByPrimaryKey(Long id);

    List<Student> selectAll();


    int updateByPrimaryKey(Student student);

    
    Long queryByPageCount(QueryObject qo);
    List<Student> queryByPageList(QueryObject qo);
    
    Student queryByLogin(@Param("email")String email,@Param("password")String password);


    List<Student> selectByCountry(String country);
    


	Student queryByName(String sfullname);




}