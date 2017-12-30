$(function(){
 // alert(111);
	
	$("#randomCodeImg").click(function(){
		//alert(11111);
		$("#randomCodeImg").prop("src","/mooc/randomCode?"+new Date().getTime());
	});
	
	$("#form-username").focus(function(){
		$("#lab").css("visibility","hidden");
	});
	
	$("#form-password").focus(function(){
		$("#lab").css("visibility","hidden");
	});
	$("#form-repassword").focus(function(){
		$("#lab").css("visibility","hidden");
	});
  });
