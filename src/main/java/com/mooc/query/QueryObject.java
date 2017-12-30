package com.mooc.query;

import lombok.Data;

@Data
public class QueryObject {
	private Integer page;//当前页
	private Integer row;//每页条数
	
	public Long getStart(){
		// 每页3条,取第6页     limit(15,3)   16,17,18   Limit 下标从0开始
		return (long) ((this.page-1)*this.row);   // (第几页-1)*每页条数
	}	
	


}


