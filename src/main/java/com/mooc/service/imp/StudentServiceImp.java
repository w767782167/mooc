package com.mooc.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mooc.domain.Student;
import com.mooc.mapper.StudentMapper;
import com.mooc.page.PageResult;
import com.mooc.query.QueryObject;
import com.mooc.service.IStudentService;

@Service
public class StudentServiceImp implements IStudentService {

	@Autowired
	private StudentMapper mapper;
	@Override
	public Student queryByLogin(String email, String password) {
		// TODO Auto-generated method stub
		
		return mapper.queryByLogin(email, password);
	}

	@Override
	public Student queryByName(String sfullname) {
		// TODO Auto-generated method stub
		return mapper.queryByName(sfullname);
	}
	@Override
	public int updateByPrimaryKey(Student student) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(student);
	}
	@Override
	public int deleteByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(Student stu) {
		// TODO Auto-generated method stub
		return mapper.insert(stu);
	}
	@Override
	public Student selectByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	@Override
	public List<Student> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}
	@Override
	public PageResult selectByPage(QueryObject qo) {
		// TODO Auto-generated method stub
		Long count = mapper.queryByPageCount(qo);
		if(count>0){
			List<Student> list = mapper.queryByPageList(qo);
			return new PageResult(count, list);
		}else{
			return PageResult.EMPTY;
		}
	}
	@Override
	public List<Student> selectByCountry(String country) {
		// TODO Auto-generated method stub
		return mapper.selectByCountry(country);
	}

	

	
	
	
}
