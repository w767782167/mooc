<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>

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
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/mooc/resource/style/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/mooc/resource/style/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/mooc/resource/style/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="/mooc/resource/style/assets/ico/apple-touch-icon-57-precomposed.png">

		
		<!-- Javascript -->
        <script src="/mooc/resource/style/assets/js/jquery-1.11.1.min.js"></script>
        <script src="/mooc/resource/style/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="/mooc/resource/style/assets/js/jquery.backstretch.min.js"></script>
        <script src="/mooc/resource/style/assets/js/scripts.js"></script>
         <script src="/mooc/resource/style/js/function.js"></script>
         <script src="/mooc/resource/style/assets/js/login.js"></script>
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
        		
    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1>MOOC</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>用户登录</h3>
                            		请输入用户邮箱和密码登录<br>
                            		<label id="lab"><font color="red" size="2">${msg}</font></label>
                            		<span style="color:red;font-family:'Microsoft Yahei';" name="errorMsg">${errorMsg}</span>
                        		</div>
                        		
                        		
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form name="form" action="/mooc/login" method="post" class="login-form">
			    
                            	<input type="radio" name="role" value="student" checked>学生
　　　　　　　　　　　　　　　　　　　　　　　　<input type="radio" name="role" value="teacher">教师
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="email" name="form-username" required="required" placeholder="邮箱" class="form-username form-control" id="form-username" style="height:50px">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="form-password" required="required" placeholder="密码" class="form-password form-control" id="form-password">
			                        </div>
			                        <div class="form-group">
			                    		<label class="sr-only" for="form-code">identifying code</label>
			                        	<input type="text" name="form-code" required="required" placeholder="验证码" class="form-code form-control" id="form-code">
			                        </div>
			                          <div class="form-group">
			                    		<img alt="验证码" src="/mooc/randomCode" title="看不清？点击切换"
			                    		id="randomCodeImg">
			                        </div>
			                        
			                        
			                        
			                        <button type="submit" class="btn">登　　录</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                   
                </div>
            </div>
            
        </div>


        

    </body>

</html>