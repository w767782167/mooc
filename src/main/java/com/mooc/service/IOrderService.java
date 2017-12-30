package com.mooc.service;

import com.mooc.page.PageResult;
import com.mooc.query.QueryObject;
import com.mooc.query.QueryOrderSets;

public interface IOrderService {

	//高级+分页
	public 	PageResult list(QueryObject qo);


	
	/*public abstract List searchOrderList(Page page);

	public abstract Integer searchTotalCount(Page page);

	public abstract List getOrderBycondtion(Page page);
	
	public abstract Integer deleteOrder(Integer integer);*/

}
