package com.mooc.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mooc.domain.Course;
import com.mooc.mapper.CourseMapper;
import com.mooc.service.ICourseService;

@Service
public class CourseServiceImp implements ICourseService {

	@Autowired
	CourseMapper mapper;
	
	@Override
	public List<Course> selectAll() {
		return mapper.selectAll();
	}
	
	

}
