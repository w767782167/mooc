package com.mooc.service.imp;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mooc.domain.Teacher;
import com.mooc.mapper.TeacherMapper;

import com.mooc.service.ITeacherService;

@Service
public class TeacherServiceImp implements ITeacherService {
	@Autowired
	private TeacherMapper mapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Teacher record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public Teacher selectByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Teacher> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Teacher record) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public Teacher queryEmailName(String email) {
		// TODO Auto-generated method stub
		return mapper.queryEmailName(email);
	}

	@Override
	public Teacher queryemail(String email, String password) {
		// TODO Auto-generated method stub
		return mapper.queryemail(email,password);
	}


	

	@Override
	public List<Teacher> selectnativeLang(String nativeLang) {
		// TODO Auto-generated method stub
		return  mapper.selectnativeLang(nativeLang);
	}


}
