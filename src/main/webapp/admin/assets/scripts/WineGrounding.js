$(function() {
	$("#add").click(function() {
		$("#addForm").submit();
	});
});

$("#address").focus(function() { // 地址框获得鼠标焦点
	var txt_value = $(this).val(); // 得到当前文本框的值
	if (txt_value == "请输入邮箱地址") {
		$(this).val(""); // 如果符合条件，则清空文本框内容
	}
});
$("#address").blur(function() { // 地址框失去鼠标焦点
	var txt_value = $(this).val(); // 得到当前文本框的值
	if (txt_value == "") {
		$(this).val("请输入邮箱地址"); // 如果符合条件，则设置内容
	}
});