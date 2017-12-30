<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en" class="fullscreen-bg">

<head>
	<title>Login</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="/mooc/admin/assets/css/bootstrap.min.css">
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
	
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript">
		
		
		function rootLogin() {
			/* $.ajax({
				type : "POST",
				url : "/mooc/rootLogin",
				data : $("form").serialize(),
				success : function(data) {
					if (data.success) {
						window.location.href = "/mooc/admin/index.jsp";
					} else {
						alert(data.msg);
					}
				},
				dataType : "json",
				contentType : "application/json",
				error : function(XMLHttpRequest, errorThrown) {
					console.debug(errorThrown);
				},
				complete : function(XMLHttpRequest) {
					console.debug("dsa");
				}
			}); */
			
			$.post("/mooc/rootLogin", $("form").serialize(), function(data) {
					if (data.success) {
						window.location.href = "/mooc/admin/index.jsp";
					} else {
						alert(data.msg);
					}
				}, "json");
		
			}
	</script>
	
	
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center">
								<!-- <img src="assets/img/logo-dark.png" alt="Klorofil Logo"> -->
								<img src="assets/img/logo-dark.png" >
								</div>
								<p class="lead">Administrator Login</p>
							</div>
							<form class="form-auth-small" action=" " method="post">
								<div class="form-group">
									<label for="signin-rootname" class="control-label sr-only">Rootname</label>
									<input type="text" class="form-control"name="rootname" id="signin-name" required="required" placeholder="Enter Root name..">
								</div>
								<div class="form-group">
									<label for="signin-password" class="control-label sr-only">Password</label>
									<input type="password" class="form-control" name="rootpwd" id="signin-password" required="required" placeholder="Enter Password..">
								</div>
								
								<button type="button" class="btn btn-primary btn-lg btn-block" onclick="rootLogin();">LOGIN</button>
								<div class="bottom">
									<span class="helper-text"><i class="fa fa-lock"></i> <a href="#">Forgot password?</a></span>
								</div>
							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">Mooc Backend Login</h1>
							<p>by The Develovers</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
</body>

</html>
