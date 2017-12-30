package com.mooc.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mooc.domain.Order;
import com.mooc.mapper.OrderMapper;
import com.mooc.page.PageResult;
import com.mooc.query.QueryObject;
import com.mooc.query.QueryOrderSets;
import com.mooc.service.IOrderService;

@Service
public class OrderServiceImp implements IOrderService {

	@Autowired
	OrderMapper mapper;

	@Override
	public PageResult list(QueryObject qo) {
		//总条数
		Long count = mapper.selectByPageCount(qo);
		if(count > 0){
			//结果集
			List<Order> order = mapper.selectByPage(qo);
			return new PageResult(count, order);
		}else{
			return PageResult.EMPTY;
		}
	}

	
	
	/*@Override
	public List searchOrderList(Page page) {
		return mapper.searchOrderList(page);
	}

	@Override
	public Integer searchTotalCount(Page page) {
		return mapper.searchTotalCount(page);
	}

	@Override
	public List getOrderBycondtion(Page page) {
		return mapper.getOrderBycondtion(page);
	}

	@Override
	public Integer deleteOrder(Integer integer) {
		return mapper.deleteOrder(integer);
	}*/

	
	
	
	
	
	
	
	
	

}
