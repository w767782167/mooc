<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>
	<title>评论管理</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/vendor/toastr/toastr.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script type="text/javascript">
	
	//delete User
		function del(Id){
			var msg="确认删除吗";
			if(confirm(msg)==true){
				location.href="./userServlet?cmd=del&userId="+Id+"";
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
				<a href="index.jsp"><img src="mooc/admin/assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
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
							
							<c:if test="${sessionScope.ROOT_IN_SESSION.ROOT_NAME == null}">
								Default
							</c:if>
							<c:if test="${sessionScope.ROOT_IN_SESSION.ROOT_NAME != null}">
								${sessionScope.ROOT_IN_SESSION.ROOT_NAME}
							</c:if></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="./rootServlet?cmd=logout"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
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
						<li><a href="/mooc/commentController?param=list" class="active" >&nbsp;<i class="fa fa-commenting"></i> <span>评论管理</span></a></li>
						<li><a href="/mooc/orderController?param=list" >&nbsp;<i class="fa fa-gavel"></i> <span>订单管理</span></a></li>
						<!-- <li><a href="register.jsp" ><i class="lnr lnr-pencil"></i> <span>管理员注册</span></a></li> -->
						
						<li><a href="/mooc/index.jsp" >&nbsp;&nbsp;<i class="fa fa-power-off"></i> <span>退出系统</span></a></li>
						
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">User-Manage</h3>
						<div class="panel-body">
						<form action="/Lafite/userServlet?cmd=list"   id="listForm" method="post">						
						
						<input type="hidden"  name="currentPage" id="currentPageInput">
					     <input type="hidden"  name="pageSize" id="pageSizeInput">
						<label class="awayfrom" style="font-size: 20px;font-family: 'Simsun';margin-left: 25px;">UserName:</label>
						<input id="selectName" name = "selectUsername" type="text" class="form-control"  
						 style="width: 100px; display: inline-block;" value = "${set.USER_NAME}">	
						
						<label class="awayfrom" style="font-size: 20px;font-family: 'Simsun';margin-left:65px;">Sex:</label>
						<select name="sex" >
							<option value="-1">请选择</option>
							<option value="male"  <c:if test="${set.USER_SEX == 'male'}"> selected="selected"</c:if> >male</option>
							<option value="female" <c:if test="${set.USER_SEX == 'female'}"> selected="selected"</c:if> >female</option>
						</select>
						
						  
						<button type="submit" class="btn btn-primary" style="margin: -3px 0 0 65px;width: 75px;height: 34px;">查询</button>	
						
						</form><br><br>
	
				<table class="table">
				<thead>
					<tr style="font-size: 15px;">
						<th>用户编号</th>
						<th>真实姓名</th>
						<th>用户头像</th>
						<th>性别</th>
						<th>用户名</th>
						<th>用户密码</th>
						<th>手机</th>
						<th>地址</th>
						<th>生日</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${pageData.data}"  var="user" varStatus="v_user">
					<tr>
						<td>${user.USER_ID }</td>
						<td>${user.USER_REALNAME }</td>
						<td>${user.USER_HEADIMG }</td>
						<td>${user.USER_SEX }</td>
						<td>${user.USER_NAME }</td>
						<td>${user.USER_PASSWORD }</td>
						<td>${user.USER_TEL }</td>
						<td>${user.USER_LOC }</td>
						<td>${user.USER_BIRTHDAY }</td>
						
						<td>
						
						</button>
						<a href = "javascript:del(${user.USER_ID});">
						<button id="confim-default" type="button" class="btn btn-danger" style="width: 50px; height: 24px; padding: 1px;font-size: 15px;"><i class="fa fa-trash-o"></i>
							删除
						</button>
						</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
			
		</div>
					
				</div>
			</div>
			<!-- END MAIN CONTENT -->
	<div id = "pages" style="margin: -50px 100px 0px 0;float: right;" >
		总共${pageData.total}条数据&nbsp;
		
	           当前页:${pageData.page>pageData.getTotalPage()?pageData.getTotalPage():pageData.page}/${pageData.getTotalPage()} &nbsp;
	    <a href="javascript:goPage(1,${pageData.pageSize})">首页</a>&nbsp;
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
	    <input type="button" value="GO" onclick="setCurrentPage(${pageData.pageSize});">
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
