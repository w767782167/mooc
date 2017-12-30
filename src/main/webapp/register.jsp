<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Register Form</title>

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
                            <h1>Register</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>注册</h3>
                            		<p>请使用邮箱注册:</p>
                            		<label id="lab"><font color="red" size="2">${msg}</font></label>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-info"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" method="post" id="form"
			                      class="login-form" action="/mooc/stuReg">
			                        
			                    	<div class="form-group">
			                    		电子邮箱
			                    		<label class="sr-only" >电子邮箱</label>
			                        	<input type="email" name="form-email" required="required" placeholder="电子邮箱" class="form-realname form-control" id="form-email" style="height:50px">
			                        </div>
			                        <div class="form-group">
			                        	密码
			                        	<label class="sr-only" for="form-password">密码</label>
			                        	<input type="password" name="form-password" required="required" placeholder="密码" class="form-password form-control" id="form-password">
			                        </div>
									 <div class="form-group">
			                        	确认密码
			                        	<label class="sr-only" for="form-repassword">密码</label>
			                        	<input type="password" name="form-repassword" required="required" placeholder="确认密码" class="form-password form-control" id="form-repassword">
			                        </div>
									<br>			                        			                        
			                        <button type="submit" class="btn">注　册</button>
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