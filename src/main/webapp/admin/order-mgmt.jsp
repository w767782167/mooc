<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>
	<title>订单管理</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="/mooc/admin/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/mooc/admin/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/mooc/admin/assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="/mooc/admin/assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="/mooc/admin/assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="/mooc/admin/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/mooc/admin/assets/img/favicon.png">
	
	
	<!-- Javascript -->
	<script src="/mooc/admin/assets/vendor/jquery/jquery.min.js"></script>
	<script src="/mooc/admin/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="/mooc/admin/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="/mooc/admin/assets/vendor/toastr/toastr.min.js"></script>
	<script src="/mooc/admin/assets/scripts/klorofil-common.js"></script>
	<script type="text/javascript" >
	
		function del(Id){
			var msg="确认删除吗";
			if(confirm(msg)==true){
				location.href="......./orderServlet?cmd=del&orderId="+Id+"";
				return true;
			}
		}
		
	//设置页面大小
	   function setPageSize(currentPage){
	     var pageSize =$("#selectPageSize").val();
	        //将当前页面的值 存放在高级查询表单隐藏域中
	     $("#pageSizeInput").val(pageSize);
	     $("#currentPageInput").val(currentPage);
	      //提交高级查询的表单
	     $("#listForm").submit();
	   } 
	   
	   function goPage(currentPage,pageSize){
	      
	      //将当前页面的值 存放在高级查询表单隐藏域中
	      $("#currentPageInput").val(currentPage);
	      $("#pageSizeInput").val(pageSize);
	      
	      //提交高级查询的表单
	      $("#listForm").submit();
	   }
	   
	   function setCurrentPage(pageSize){
	     var currentPage = $("#jumpPage").val();
	    //将当前页面的值 存放在高级查询表单隐藏域中
	      $("#currentPageInput").val(currentPage);
	      $("#pageSizeInput").val(pageSize);
	      //提交高级查询的表单
	      $("#listForm").submit();
	   }
	   $(function () { $("[data-toggle='tooltip']").tooltip(); });
	   
	</script>
	
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.jsp"><img src="/mooc/admin/assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control" placeholder="Search dashboard...">
						<span class="input-group-btn"><button type="button" class="btn btn-primary">Go</button></span>
					</div>
				</form>
				
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="admin/assets/img/user.png" class="img-circle" alt="Avatar"> 
							<span>
							<c:if test="${sessionScope.root_in_session == null}">
								Default
							</c:if>
							<c:if test="${sessionScope.root_in_session != null}">
								${sessionScope.root_in_session.rootname}
							</c:if></span> 
							<i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								
								<li><a href="/mooc/rootController?param=logout"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
							</ul>
						</li>
						
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="/mooc/admin/index.jsp" ><i class="fa fa-paper-plane-o"></i> <span>&nbsp;&nbsp;主页</span></a></li>
						
						<li><a href="/mooc/teacherController?param=list" >&nbsp;&nbsp;<i class="fa fa-tumblr"></i> <span>&nbsp;&nbsp;教师管理</span></a></li>
						<li><a href="/mooc/studentController?param=list" ><i class="fa fa-graduation-cap"></i> <span>学生管理</span></a></li>
						<li><a href="/mooc/languageController?param=list" ><i class="fa fa-balance-scale"></i> <span>语言管理</span></a></li>
						<li><a href="/mooc/commentController?param=list" >&nbsp;<i class="fa fa-commenting"></i> <span>评论管理</span></a></li>
						<li><a href="/mooc/orderController?param=list" class="active" >&nbsp;<i class="fa fa-gavel"></i> <span>订单管理</span></a></li>
						<!-- <li><a href="register.jsp" ><i class="lnr lnr-pencil"></i> <span>管理员注册</span></a></li> -->
						
						<li><a href="/mooc/index.jsp" >&nbsp;&nbsp;<i class="fa fa-power-off"></i> <span>退出系统</span></a></li>
						
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">订单管理</h3>
						<div class="panel-body">
						<form action="/mooc/orderController?param=list"   id="listForm" method="post">						
						
						<input type="hidden"  name="currentPage" id="currentPageInput">
					     <input type="hidden"  name="pageSize" id="pageSizeInput">
						<label class="awayfrom" style="font-size: 20px;font-family: 'Simsun';margin-left: 25px;">学生全名:</label>
						<input id="selectName" name = "stdName" type="text" class="form-control"  
						 style="width: 100px; display: inline-block;" value = "${qos.stu_name}">	
						
						<label class="awayfrom" style="font-size: 20px;font-family: 'Simsun';margin-left:65px;">教师全名:</label>
						<input id="selecttel" name = "techName" type="text"  class="form-control"  
						  style="width: 160px;display: inline-block;" value = "${qos.tech_name}"> 
						  
						
						<label class="awayfrom" style="font-size: 20px;font-family: 'Simsun';margin-left:65px;">课程:</label>
						<input id="selectwinename" name = "course" type="text"  class="form-control"  
						  style="width: 100px;display: inline-block;" value = "${qos.course}"> 
						  
						<button type="submit" class="btn btn-primary" style="margin: -3px 0 0 65px;width: 75px;height: 34px;">查询</button>	
						
						</form><br><br>
	
				<table class="table">
				<thead>
					<tr style="font-size: 15px;">
						<th>订单编号</th>
						<th>学生全名</th>
						<th>教师全名</th>
						<th>课程</th>
						<th>课时</th>
						<th>状态</th>
						<th>创建时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${pageRet}"  var="order" varStatus="v_order">
					<tr>
						<td>${order.id}</td>
						<td>${order.stuName}</td>
						<td>${order.techName}</td>
						<td>${order.course}</td>
						<td>${order.periods}</td>
						<td>${order.status}</td>
						<td>${order.createTime}</td>
						<td>
						<!-- <button id = " " onclick="" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal1" style="width: 50px; height: 24px; padding: 1px;font-size: 15px;" >
							修改
						</button> -->
						<a href = "javascript:del(${order.id});">
						<button id="confim-default" type="button" class="btn btn-danger" style="width: 50px; height: 24px; padding: 1px;font-size: 15px;"><i class="fa fa-trash-o"></i>
							删除
						</button>
						</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
				
			</button>
		
			<!-- 模态框（Modal） update -->
			<!-- <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width:1050px">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">
								修改
							</h4>
						</div>
						<div class="modal-body">
							<form id="updateForm" action="/Lafite/WineServlet?tag=update" method="post" enctype="multipart/form-data">
								<input type="hidden" id = "wid2" name = "wId">
								酒名：<input id = "wname2" type="text" name = "wName"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								价格：<input  id = "wprice2" type="number" min=0.00  step=0.01 name = "wPrice">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								库存：<input id = "wstock2" type="number" min=0 name = "wStock" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								生产日期：<input id = "wborn2" type="text" name = "wBorn" data-toggle="tooltip"
       								 data-placement="bottom" title="format: 2000"> <br><br>
								
								热度：<input  id = "whot2" type="number" min=0 name = "wHot">
								年产量：<input id = "wyield2" type="number" min=0 name = "wYield" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								酒类：<select id = "wvarieties2" name = "wVarieties">
									
									</select><br><br>
									
								主图：<input id = "wimg2" type="file" style="display: inline-block;" name = "wImg"><br><br>
								饮酒建议：<div  style="float: right; margin-right:460px;">描述：</div><br>
								<textarea id = "wadvice2" name="wAdvice" contenteditable="true" rows="5" cols="40" style="margin-left: 50px" name="detailsText" ></textarea>
								<textarea id = "wdescribe2" name="wDescribe" contenteditable="true" rows="5" cols="40" style="margin-left: 115px" name="detailsText" ></textarea><br>
								商品详情：<br>
								<textarea id = "wdetails2" name="wDetails" contenteditable="true" rows="4" cols="102" style="margin-left: 50px" name="detailsText"></textarea>
								<input type="hidden" id = "suibain" name="suibaina" > 
							
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭
							</button>
							<button type="button" class="btn btn-primary" id = "update">
								提交更改
							</button>
						</div>
						
						</form>
					</div>/.modal-content
				</div> -->
				<!-- /.modal -->
			</div> 
		</div>
					
				</div>
			</div>
			<!-- END MAIN CONTENT -->
	<div id = "pages" style="margin: -50px 100px 0px 0;float: right;" >
		<%-- 总共${pageRet.total}条数据&nbsp;
		
	           当前页:${pageRet.rows.size()>pageRet.getTotalPage()?pageRet.getTotalPage():pageRet.rows.size()}/${pageRet.getTotalPage()} &nbsp;
	    <a href="javascript:goPage(1,${pageRet.pageSize})">首页</a>&nbsp;
	    <a href="javascript:goPage(${pageData.page-1==0?1:pageData.page-1},${pageData.pageSize})">上一页</a>&nbsp;
	  
	   
		<c:forEach begin="${pageData.pageIndex.beginIndex}"
			end="${pageData.pageIndex.endIndex}" step="1" var="index">

			
			<c:choose>
					<c:when test="${index==pageData.page}">
						<span style="color:red;">${index}</span>
					</c:when>
			</c:choose>
			<c:choose>
					<c:when test="${index!=pageData.page}">
						<a href="javascript:goPage(${index},${pageData.pageSize})">${index}</a>
					</c:when>
			</c:choose>
			
		</c:forEach>

		
	    <a href="javascript:goPage(${pageData.page+1==pageData.getTotalPage()?pageData.getTotalPage():pageData.page+1},${pageData.pageSize})">下一页</a>&nbsp;
	    <a href="javascript:goPage(${pageData.getTotalPage()},${pageData.pageSize})">尾页</a>
	    
	 <form action=" " id="pageSizeForm"   method="post" style="display: inline;">
	    当前页
	 	<select name="pageSize" id="selectPageSize"  onchange="setPageSize(${pageData.page})">
			<option ${pageData.pageSize==3?"selected='selected'":"" }>3</option>
			<option ${pageData.pageSize==5?"selected='selected'":"" }>5</option>
			<option ${pageData.pageSize==8?"selected='selected'":"" }>8</option>
			<option ${pageData.pageSize==10?"selected='selected'":"" }>10</option>
		</select> 
	  条数据&nbsp;
	    跳到<input type="number" id="jumpPage"  name="current" min="1" max = "${pageData.getTotalPage()}" 
	    value= "${pageData.page>pageData.getTotalPage()?pageData.getTotalPage():pageData.page}" style="width: 50px;">页
	    <input type="button" value="GO" onclick="setCurrentPage(${pageData.pageSize});"> --%>
	    
	    
	    
	 </form>   
	   
	</div>
			
		</div>
		<!-- END MAIN -->
		<footer>
			<div class="container-fluid">
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	
</body>

</html>
