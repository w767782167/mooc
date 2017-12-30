<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Teachers</title>
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
<link rel="stylesheet" type="text/css" href="/mooc/css/111.css">
</head>
<body style="margin: 50px 0 0 250px;">


	<div id="queryall" style="margin-left: 50px;">
		<form action="/mooc/selectbynativeLang" method="post">
			<select name="nativeLang"
				style="height: 50px;width: 500px;background-color: #eee;font-size: 18px;">
				<option value="所有语种" selected="selected">所有语种</option>
				<option value="中文">中文</option>
				<option value="英语">英语</option>
				<option value="法语">法语</option>
				<option value="西班牙语">西班牙语</option>
				<option value="葡萄牙语">葡萄牙语</option>
				<option value="日语">日语</option>
				<option value="意大利语">意大利语</option>
				<option value="德语">德语</option>
			</select>
			
		
			<input type="submit" value="浏览" id="chaxun"
				style="height: 50px;width: 300px; background-color: #ff4338 ;color: white;font-size: 24px;">
		</form>
		<h2>
				当前语种为:<span style="color: red;">
				${nativeLang}</span>
			</h3>
	</div>
	<!--数据库书籍开始  -->
	<c:forEach items="${teachers}" var="teacher">
		<div style="margin: 50px 0px;float:left;background-color: #eff;">
			<div style="width:120px;height: 120px;margin-left: 50px;float: left;">
				<!-- <input type="submit" ><img alt="" src="/mooc/resource/images/person1.jpg"
					style="height: 180px;"></input> -->
				<input type="image" alt="" src="/mooc/resource/images/person1.jpg" style="height: 180px;">
				<!-- <img alt="" src="/mooc/resource/images/person1.jpg"
					style="height: 180px;"> -->
			</div>
			<div class="tercher_msg"
				style="float:left;margin-left: 80px;width: 500px; ">
				<form action="/mooc/tea">
					<input type="hidden" name="teacherid" value="${teacher.id}">
					<input type="submit" value="${teacher.fullname}"
						style="border: 0px;height: 33px;widows: 300px;background-color: #0fc">&emsp;&emsp;性别:${teacher.sex!=null?teacher.sex:'保密'} 
				</form>
				<p>职业教师 &nbsp;&nbsp;${teacher.nativeLang}</p>
				<p>来自&nbsp;&nbsp;${teacher.country}</p>
				<p>${teacher.introduction}
			</div>
			<div class="price" style="float: left;margin-left: 100px;">
				<p style="color: #989898">每小时费率</p>
				<p>
					<b> ¥${teacher.tuition}元/h</b>
				</p>
				
			</div>

		</div>
	</c:forEach>



</body>
</html>

