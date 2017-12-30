<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Tea</title>
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">


<link rel="stylesheet" type="text/css" href="/mooc/resource/css/teachermsg.css">
 <script src="/mooc/resource/style/assets/js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript">
 	function booking(tech) {
 		var msg="确认下单吗";
			if(confirm(msg)==true){
				//location.href="/mooc/orderController?param=pleaseorder&cmd="+tech+"";
				return true;
			}
 	
 	}
 
 
 </script>
	
	
	
</head>
<body>


	<br>
	<!-- 主题部分 -->
	<div id="main">
		<div style="float: left;">
			<div id="teacher_head">
				<img alt="头像加载失败" src="/mooc/resource/images/ppl.jpg"
					style="margin:0 0 0 200px;height: 180px;width: 180px;">
			</div>
			
			<div id="tercher_msg">
				<div style="margin-left: 30px;">
				<form action="" method="post">
					<span id="teacher_name"> <b>${teacher.fullname}</b> </span>&emsp; <span>${teacher.sex}</span>
					<p>
						<span style="color: orange;">职业教师</span>
						&nbsp;&nbsp;会说&nbsp;&nbsp;<span style="color: orange;">
							${teacher.nativeLang}</span>
					</p>
					<p>来自&nbsp;&nbsp;${teacher.country}</p>
				</div>
			</div>
			<div style="margin: 180px 600px 0 200px;font-family: Microsoft Yahei;">
				<p>
					&nbsp;<br>
				<br /> <span>教师简介:</span><br /> <span>${teacher.introduction}</span>

				<h3>教师评价</h3>

				<div>
					<!-- 教师评价 -->
				</div>
			</div>
		</div>
		<!--订单表单开始  -->
		
			<!--当前教师id的值  -->
			<input type="hidden" name="teacherid" value="${teacher.id}">
			<div id="price" style="float: right; margin: -300px 200px 0 0;">
				<p style="color: #989898">每小时费率</p>
				<p>
					<b> ¥${teacher.tuition}元/h</b>
				</p><br>
				<input type="number" min="1" value="1" style="width: 50px;height: 20px;margin: 0 0 5px 0px;">课时<br>
				<input type="button"
					style="width: 300px;height: 35px;background-color: #ff8811;margin: 0 0 5px 0px;"
					value="预约课程"  onclick="booking();"><br>
				 <input type="button"
					style="width: 300px;height: 35px;" value="联系教师" > <br>
				<br>
				<div style="text-align: center;">100% 满意保证</div>
			</div>
		</form>
		<!--订单表单结束  -->
	</div>
	<br>
	<!--尾页  -->
	<div id="foot">

		
	</div>


</body>
</html>

