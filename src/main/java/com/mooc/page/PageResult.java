package com.mooc.page;

import java.util.Collections;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PageResult {
	private Long total;// 总条数
	private List<?> rows;// 结果集

	public static final PageResult EMPTY = new PageResult(0L,
			Collections.EMPTY_LIST);

	
}
