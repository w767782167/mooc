package com.mooc.query;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QueryOrderSets extends QueryObject {
	
	private String stu_name;
	
	private String tech_name;
	
	private String course;
	
}
