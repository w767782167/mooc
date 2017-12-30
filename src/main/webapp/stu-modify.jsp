<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c" %>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>完善个人资料</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="/mooc/resource/style/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/mooc/resource/style/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="/mooc/resource/style/assets/css/form-elements.css">
        <link rel="stylesheet" href="/mooc/resource/style/assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="/mooc/resource/assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/mooc/resource/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/mooc/resource/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/mooc/resource/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="/mooc/resource/assets/ico/apple-touch-icon-57-precomposed.png">
        <script src="/mooc/resource/style/assets/js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="/mooc/resource/style/assets/js/reg.js"></script>
	
    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1>Improving personal data</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>${user_in_session.fullname}</h3>
                            		<p>完善你的个人资料:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-info"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="/mooc/modifyStu" method="post"
			                      class="login-form" enctype="multipart/form-data" >
			                        
			                    	<div class="form-group">
			                    		全名
			                    		<label class="sr-only" >全名</label>
			                        	<input type="text" name="form-realname" value="${user_in_session.fullname }" required="required" placeholder="真实名字" class="form-realname form-control" id="form-realname" >
			                        </div>
			                        <div class="form-group">
			                    		头像
			                    		<img src="${user_in_session.headimg }" style="height:60px;">
			                        	<input type="file" name="file" required="required" id="form-headimg" >
			                        </div>
			                        <div class="form-group">
			                    		电子邮箱
			                    		<label class="sr-only" >电子邮箱</label>
			                        	<input type="email" name="form-email" value="${user_in_session.email }" required="required" placeholder="电子邮箱" class="form-realname form-control" id="form-email" style="height:50px">
			                        </div>

			                        <div class="form-group">
			                        	密码
			                        	<label class="sr-only" for="form-password">密码</label>
			                        	<input type="password" name="form-password" value="${user_in_session.password }" required="required" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        
			                         <div class="form-group">
			                        	性别 <br>
			                        	<input type="radio" name="sex" value="男" <c:if test="${user_in_session.sex==null }">checked="checked"</c:if>  <c:if test="${user_in_session.sex eq '男' }">checked="checked"</c:if> value="男"> 男  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                        	<input type="radio" name="sex" value="女" <c:if test="${user_in_session.sex eq '女' }">checked="checked"</c:if> value="女">女
			                        </div>
			                          <div class="form-group">
			                        	出生日期
			                        	<input type="date" value="${user_in_session.birthday }" name="form-birth" required="required" "title="yyyy-MM-dd"
			                        	 placeholder="yyyy-MM-dd" class="form-birth form-control" id="form-birth">
			                        </div>
			                        
			                         <div class="form-group">
			                        	国家
			                        	<input type="text" name="form-loc" value="${user_in_session.country }" required="required" "
			                        	 placeholder="国家" class="form-loc form-control" id="form-loc">
			                        </div>
			                        
			                        <div class="form-group">
			                        	母语
			                        	<input type="text" name="native_lang" value="${user_in_session.nativeLang}" required="required" "
			                        	 placeholder="" class="form-loc form-control" id="form-loc">
			                        </div>
									<div class="form-group">
			                        	电话
			                        	<label class="sr-only" for="form-tel">电话</label>
			                        	<input type="text" name="form-tel" required="required" value="${user_in_session.tel }"  onblur="checkUserTel();"
			                        	 placeholder="电话" class="form-tel form-control" id="form-tel">
			                        	 
			                        	 <!-- <span id="tipTel" style="color:red;text-align: center;" ></span> -->
			                        </div>
			                       		<div class="form-group">
			                        	skype
			                        	<input type="text" name="skype" required="required" " value="${user_in_session.skype }"
			                        	 placeholder="skype" class="form-loc form-control" id="form-loc">
			                        </div>
			                      		<div class="form-group">
			                        	个人简介
			                        	 <textarea name="introduct" cols="40" rows="3" value="${user_in_session.introduction }"
			                        	 placeholder="我是......" class="form-loc form-control"></textarea>
			                        </div>
			                        	
									<br>			                        			                        
			                        <button type="submit" class="btn">确　定</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                   
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="/mooc/resource/style/assets/js/jquery-1.11.1.min.js"></script>
        <script src="/mooc/resource/style/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="/mooc/resource/style/assets/js/jquery.backstretch.min.js"></script>
        <script src="/mooc/resource/style/assets/js/scripts.js"></script>
        <script src="/mooc/resource/style/js/function.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>	