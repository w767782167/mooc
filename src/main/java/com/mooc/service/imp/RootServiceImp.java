package com.mooc.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mooc.domain.Root;
import com.mooc.mapper.RootMapper;
import com.mooc.service.IRootService;

@Service
public class RootServiceImp implements IRootService {
	@Autowired
	private RootMapper mapper;

	@Override
	public Root queryRootByLogin(String rootname, String password) {
		return mapper.queryRootByLogin(rootname, password);
	}

	

	

}
