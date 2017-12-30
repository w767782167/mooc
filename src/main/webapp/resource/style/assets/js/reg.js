/*function submitForm(){
	 alert(1111);
      $.post("/mooc/modifyStu",$("form").serialize(),function(data){
    	  alert(11112);
                 if(data.success){
                    window.location.href="/Crm/index";
                 }else{
                    alert(data.msg);
                 }
         },"json");
  }
*/
$(function(){
 // alert(111);
	$("#form-email").focus(function(){
		$("#lab").css("visibility","hidden");
	});
	
	$("#form-password").focus(function(){
		$("#lab").css("visibility","hidden");
	});
	$("#form-code").focus(function(){
		$("#lab").css("visibility","hidden");
	});
  });
function checkUserTel(){
	var str=$.trim($("#form-tel").val());
	var tel_reg=/^1[3|4|5|7|8]\d{9}$/;
	if(str==""){
		alert("手机号码不能为空");
		return false;
	}else if(!tel_reg.test(str)){
		   alert("输入手机号码不正确");
		   $("#form-tel").val("");
		   return false;
 }
}
