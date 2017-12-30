package com.mooc.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mooc.page.PageResult;
import com.mooc.query.QueryOrderSets;
import com.mooc.service.IOrderService;
import com.mooc.util.StringUtils;

@Controller
public class OrderController {

	@Autowired
	IOrderService service;

	private QueryOrderSets set = new QueryOrderSets();

	@RequestMapping("/orderController")
	public void orderCtrller(HttpServletRequest req, HttpServletResponse resp) {
		String param = req.getParameter("param");
		System.out.println(param);

		try {
			if (StringUtils.hasLength(param)) {
				if (param.equals("list")) {
					searchOrderList(req, resp);
				} else if (param.equals("")) {

				}

			}

		} catch (Exception e) {

		}

	}

	public void searchOrderList(HttpServletRequest req,
			HttpServletResponse resp) throws Exception {


		// 获取查询参数
		
		
		String pageSize = req.getParameter("pageSize");
		if (StringUtils.hasLength(pageSize)) {
			set.setRow(Integer.valueOf(pageSize));
		}
		System.out.println(pageSize);
		
		String currentPage = req.getParameter("currentPage");
		if (StringUtils.hasLength(currentPage)) {
			set.setPage(Integer.valueOf(currentPage));
		}
		
		
		// dao = new WineDao();
		// PageData pageData = dao.selectPage(qps);
		System.out.println(set);
		
		set.setPage(1);  //currentPage
		set.setRow(8);    //PageSize
		
		PageResult result = service.list(set);
		System.out.println(set.getStart()+","+result.getTotal()+","+result.getRows());

		req.getSession().setAttribute("pageRet", result.getRows());
		req.getSession().setAttribute("qos", set);

		req.getRequestDispatcher("/admin/order-mgmt.jsp").forward(req,
				resp);

	}

}
