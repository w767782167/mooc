$(document).ready(function() {

	/*-----------------------------------/
	/*	TOP NAVIGATION AND LAYOUT
	/*----------------------------------*/

	$('.btn-toggle-fullwidth').on('click', function() {
		if(!$('body').hasClass('layout-fullwidth')) {
			$('body').addClass('layout-fullwidth');

		} else {
			$('body').removeClass('layout-fullwidth');
			$('body').removeClass('layout-default'); // also remove default behaviour if set
		}

		$(this).find('.lnr').toggleClass('lnr-arrow-left-circle lnr-arrow-right-circle');

		if($(window).innerWidth() < 1025) {
			if(!$('body').hasClass('offcanvas-active')) {
				$('body').addClass('offcanvas-active');
			} else {
				$('body').removeClass('offcanvas-active');
			}
		}
	});

	$(window).on('load', function() {
		if($(window).innerWidth() < 1025) {
			$('.btn-toggle-fullwidth').find('.icon-arrows')
			.removeClass('icon-arrows-move-left')
			.addClass('icon-arrows-move-right');
		}

		// adjust right sidebar top position
		$('.right-sidebar').css('top', $('.navbar').innerHeight());

		// if page has content-menu, set top padding of main-content
		if($('.has-content-menu').length > 0) {
			$('.navbar + .main-content').css('padding-top', $('.navbar').innerHeight());
		}

		// for shorter main content
		if($('.main').height() < $('#sidebar-nav').height()) {
			$('.main').css('min-height', $('#sidebar-nav').height());
		}
	});


	/*-----------------------------------/
	/*	SIDEBAR NAVIGATION
	/*----------------------------------*/

	$('.sidebar a[data-toggle="collapse"]').on('click', function() {
		if($(this).hasClass('collapsed')) {
			$(this).addClass('active');
		} else {
			$(this).removeClass('active');
		}
	});

	if( $('.sidebar-scroll').length > 0 ) {
		$('.sidebar-scroll').slimScroll({
			height: '95%',
			wheelStep: 2,
		});
	}


	/*-----------------------------------/
	/*	PANEL FUNCTIONS
	/*----------------------------------*/

	// panel remove
	$('.panel .btn-remove').click(function(e){

		e.preventDefault();
		$(this).parents('.panel').fadeOut(300, function(){
			$(this).remove();
		});
	});

	// panel collapse/expand
	var affectedElement = $('.panel-body');

	$('.panel .btn-toggle-collapse').clickToggle(
		function(e) {
			e.preventDefault();

			// if has scroll
			if( $(this).parents('.panel').find('.slimScrollDiv').length > 0 ) {
				affectedElement = $('.slimScrollDiv');
			}

			$(this).parents('.panel').find(affectedElement).slideUp(300);
			$(this).find('i.lnr-chevron-up').toggleClass('lnr-chevron-down');
		},
		function(e) {
			e.preventDefault();

			// if has scroll
			if( $(this).parents('.panel').find('.slimScrollDiv').length > 0 ) {
				affectedElement = $('.slimScrollDiv');
			}

			$(this).parents('.panel').find(affectedElement).slideDown(300);
			$(this).find('i.lnr-chevron-up').toggleClass('lnr-chevron-down');
		}
	);


	/*-----------------------------------/
	/*	PANEL SCROLLING
	/*----------------------------------*/

	if( $('.panel-scrolling').length > 0) {
		$('.panel-scrolling .panel-body').slimScroll({
			height: '430px',
			wheelStep: 2,
		});
	}

	if( $('#panel-scrolling-demo').length > 0) {
		$('#panel-scrolling-demo .panel-body').slimScroll({
			height: '175px',
			wheelStep: 2,
		});
	}

	/*-----------------------------------/
	/*	TODO LIST
	/*----------------------------------*/

	$('.todo-list input').change( function() {
		if( $(this).prop('checked') ) {
			$(this).parents('li').addClass('completed');
		}else {
			$(this).parents('li').removeClass('completed');
		}
	});


	/*-----------------------------------/
	/* TOASTR NOTIFICATION
	/*----------------------------------*/

	if($('#toastr-demo').length > 0) {
		toastr.options.timeOut = "false";
		toastr.options.closeButton = true;
		toastr['info']('Hi there, this is notification demo with HTML support. So, you can add HTML elements like <a href="#">this link</a>');

		$('.btn-toastr').on('click', function() {
			$context = $(this).data('context');
			$message = $(this).data('message');
			$position = $(this).data('position');

			if($context == '') {
				$context = 'info';
			}

			if($position == '') {
				$positionClass = 'toast-left-top';
			} else {
				$positionClass = 'toast-' + $position;
			}

			toastr.remove();
			toastr[$context]($message, '' , { positionClass: $positionClass });
		});

		$('#toastr-callback1').on('click', function() {
			$message = $(this).data('message');

			toastr.options = {
				"timeOut": "300",
				"onShown": function() { alert('onShown callback'); },
				"onHidden": function() { alert('onHidden callback'); }
			}

			toastr['info']($message);
		});

		$('#toastr-callback2').on('click', function() {
			$message = $(this).data('message');

			toastr.options = {
				"timeOut": "10000",
				"onclick": function() { alert('onclick callback'); },
			}

			toastr['info']($message);

		});

		$('#toastr-callback3').on('click', function() {
			$message = $(this).data('message');

			toastr.options = {
				"timeOut": "10000",
				"closeButton": true,
				"onCloseClick": function() { alert('onCloseClick callback'); }
			}

			toastr['info']($message);
		});
	}
});


//wine-manage.jsp


// toggle function
$.fn.clickToggle = function( f1, f2 ) {
	return this.each( function() {
		var clicked = false;
		$(this).bind('click', function() {
			if(clicked) {
				clicked = false;
				return f2.apply(this, arguments);
			}

			clicked = true;
			return f1.apply(this, arguments);
		});
	});

}



$(function() {
	$("#add").click(function() {
		$("#addForm").submit();
	});
});

$(function() {
	$("#update").click(function() {
		$("#updateForm").submit();
	});
});

//date format
function formatDate(now) {
	var year=now.getYear();
//	var month=now.getMonth()+1;
//	var date=now.getDate();
//	var hour=now.getHours();
//	var minute=now.getMinutes();
//	var second=now.getSeconds();
	console.debug(year);
	return year;
	//+"/"+month+"/"+date+" "+hour+":"+minute+":"+second;
}

function WineId(id) {
	$.post("/Lafite/WineServlet?tag=one", {
		"wineId" : id
	}, function(data, status) {
		console.info(data);
		if (status == "success") {
			console.info(data);
			data=JSON.parse(data);
			console.info(data);
			//var s = new Date(parseInt(data.wINE_BORN)).toLocaleString().substr(0,5);
			 //var s = formatDate(new Date(data.wINE_BORN));
			 //console.info(s);
			 
			$("#wid2").val(data.wINE_ID);
			$("#wname2").val(data.wINE_NAME);
			$("#wprice2").val(data.wINE_PRICE);
			$("#wstock2").val(data.wINE_STOCK);
			$("#wborn2").val(data.wINE_BORN);
			$("#whot2").val(data.wINE_HOT);
			$("#wyield2").val(data.wINE_YIELD);
			var str = "<option ${data.wINE_VARIETIES_ID==1?"+"select='selected':"+""+"}>传奇</option>"
			
			+"<option ${data.wINE_VARIETIES_ID==2?"+"select='selected':"+""+"}>传说</option>"+
			"<option ${data.wINE_VARIETIES_ID==3?"+"select='selected':"+""+"}>珍藏</option>"+
			"<option ${data.wINE_VARIETIES_ID==4?"+"select='selected':"+""+"}>珍酿</option>";
			$("#wvarieties2").html(str);
			$("#suibain").val(data.wINE_IMG);
			$("#wadvice2").html(data.wINE_ADVICE);
			$("#wdescribe2").html(data.wINE_DESCRIBE);
			$("#wdetails2").html(data.wINE_DETAIL);
		}
	});
}


function haslength(id,msg) {

	$("#"+id).blur(function() { // 地址框失去鼠标焦点
		var txt_value = $(this).val(); // 得到当前文本框的值
		if (txt_value == "") {
			$(this).val(msg); // 如果符合条件，则设置内容
		}
	});
}

 


