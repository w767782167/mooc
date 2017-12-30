package com.mooc.mapper;

import com.mooc.domain.Order;
import com.mooc.query.QueryObject;

import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Order record);

    Order selectByPrimaryKey(Long id);

    List<Order> selectAll();

    int updateByPrimaryKey(Order record);
    
    //高级查询和分页
  	List<Order> selectByPage(QueryObject qo);
  	Long selectByPageCount(QueryObject qo);

  	
	
    
    

  	
}