<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="resource/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="resource/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="resource/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="resource/css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="resource/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resource/css/owl.theme.default.min.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="resource/css/flexslider.css">

	<!-- Pricing -->
	<link rel="stylesheet" href="resource/css/pricing.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="resource/css/style.css">

	<!-- Modernizr JS -->
	<script src="resource/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="resource/js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<!-- <div class="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-right">
						<p class="site">www.yourdomainname.com</p>
						<p class="num">Call: +01 123 456 7890</p>
						<ul class="fh5co-social">
							<li><a href="#"><i class="icon-facebook2"></i></a></li>
							<li><a href="#"><i class="icon-twitter2"></i></a></li>
							<li><a href="#"><i class="icon-dribbble2"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div> -->
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<div id="fh5co-logo"><a href="index.jsp"><i class="icon-study"></i>Mooc<span>.</span></a></div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li class="active"><a href="index.jsp">主页</a></li>
							<li><a href="#language">课程</a></li>
							<li><a href="/mooc/teachers">教师</a></li>
							<li><a href="#contact">联系</a></li>
							<li><a href="#about">关于</a></li>
							
							<c:if test="${user_in_session == null }">
							<li class="btn-cta"><a href="tech-reg.jsp"><span>成为教师</span></a></li>
							<li class="btn-cta"><a href="login.jsp"><span>登陆</span></a></li>
							<li class="btn-cta"><a href="register.jsp"><span>注册</span></a></li>
							</c:if>
							
							<c:if test="${user_in_session != null }">
							<li class="has-dropdown"><a >${user_in_session.email }</a>
								<ul class="dropdown">
									<li><a href="stu-modify.jsp">修改个人信息</a>
									</li>
									<li><a href="#">订单</a>
									</li>
									<li><a href="/mooc/logout">注销</a>
									</li>
								</ul>
							</li>
							</c:if>
						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</nav>
	
	<aside id="fh5co-hero">
		<div class="flexslider">
			<ul class="slides">
		   	<li style="background-image: url(resource/images/img_bg_1.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1>教育植根于爱.</h1><br><br>
									<p><a class="btn btn-primary btn-lg" href="#">Start Learning Now!</a></p>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(resource/images/img_bg_2.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1>教育的伟大目标不是知识, 而是行动.</h1><br>
									<p><a class="btn btn-primary btn-lg btn-learn" href="#">Start Learning Now!</a></p>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(resource/images/img_bg_3.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1>我们会帮助你学习新的知识</h1><br>
									<p><a class="btn btn-primary btn-lg btn-learn" href="#">Start Learning Now!</a></p>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>		   	
		  	</ul>
	  	</div>
	</aside>

	<div id="fh5co-course">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading" id="language">
					<h2>海量纯母语外教资源，任何语言</h2>
				</div>
			</div>
			<div class="row">
			<!--查询语种表单开始  -->
			
			<form action="/mooc/selectbynativeLang" method="post">
				<input type="hidden" name="nativeLang" value="中文">
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(resource/images/zhongguo.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">中文</a></h3>
							<!--  <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>-->
							<span><input type="submit" class="btn btn-primary btn-sm btn-course" value="了解更多" ></input></span>
						</div>
					</div>
				</div>
				</form>
				<form action="/mooc/selectbynativeLang" method="post">
				<input type="hidden" name="nativeLang" value="英语">
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(resource/images/yingguo.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">英语</a></h3>
							<span><input type="submit" class="btn btn-primary btn-sm btn-course" value="了解更多" ></input></span>
						</div>
					</div>
				</div>
				</form>
				<form action="/mooc/selectbynativeLang" method="post">
				<input type="hidden" name="nativeLang" value="法语">
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(resource/images/faguo.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">法语</a></h3>
							<span><input type="submit" class="btn btn-primary btn-sm btn-course" value="了解更多" ></input></span>
						</div>
					</div>
				</div>
				</form>
				<form action="/mooc/selectbynativeLang" method="post">
				<input type="hidden" name="nativeLang" value="西班牙语">
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(resource/images/xibanya.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">西班牙语</a></h3>
							<span><input type="submit" class="btn btn-primary btn-sm btn-course" value="了解更多" ></input></span>
						</div>
					</div>
				</div>
				</form>
				<form action="/mooc/selectbynativeLang" method="post">
				<input type="hidden" name="nativeLang" value="西班牙语">
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(resource/images/putaoya.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">葡萄牙语</a></h3>
							<span><input type="submit" class="btn btn-primary btn-sm btn-course" value="了解更多" ></input></span>
						</div>
					</div>
				</div>
				</form>
				<form action="/mooc/selectbynativeLang" method="post">
				<input type="hidden" name="nativeLang" value="日语">
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(resource/images/riben.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">日语</a></h3>
							<span><input type="submit" class="btn btn-primary btn-sm btn-course" value="了解更多" ></input></span>
						</div>
					</div>
				</div>
				</form>
				<form action="/mooc/selectbynativeLang" method="post">
				<input type="hidden" name="nativeLang" value="意大利语">
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(resource/images/yidali.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">意大利</a></h3>
							<span><input type="submit" class="btn btn-primary btn-sm btn-course" value="了解更多" ></input></span>
						</div>
					</div>
				</div>
				</form>
				<form action="/mooc/selectbynativeLang" method="post">
				<input type="hidden" name="nativeLang" value="德语">
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(resource/images/deguo.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">德语</a></h3>
							<span><input type="submit" class="btn btn-primary btn-sm btn-course" value="了解更多" ></input></span>
						</div>
					</div>
				</div>
				</form>
				<!--查询语种表单结束  -->
			</div>
		</div>
	</div>
	
	<div id="fh5co-counter" class="fh5co-counters" style="background-image: url(resource/images/img_bg_4.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="row">
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-world"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="3297" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Foreign Followers</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-study"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="3700" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Students Enrolled</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-bulb"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="5034" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Classes Complete</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-head"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="1080" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Certified Teachers</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-course-categories">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading" id="about">
					<h2>关于Mooc</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<i class="icon-shop"></i>
						</span>
						<div class="desc">
							<h3><a href="#">Learn with real people</a></h3>
							<p>We believe that the key thing that is missing from language education is people. We built Mooc to make human connections between language learners and language teachers. 
								On our platform, you can find a teacher from the US to tutor you in English, or a person in China to practice Chinese with you.
								We believe that everyone can become fluent in any foreign language with a teacher.
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<i class="icon-heart4"></i>
						</span>
						<div class="desc">
							<h3><a href="#">Over a million students</a></h3>
							<p>Mooc now has a global community of over a million language learners and more than a thousand language teachers, studying over a hundred languages. 
								Hundreds of thousands of paid language lessons have taken place on Mooc, and every day, more and more students and teachers are discovering 
								how quickly they can learn with personal online lessons.
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<i class="icon-banknote"></i>
						</span>
						<div class="desc">
							<h3><a href="#">Learning accessible</a></h3>
							<p>We believe that language education is going to radically change as traditional methods of language learning are disrupted by the availability of online language teachers. 
								Language education has historically been expensive and inefficient, and only people who studied abroad could gain fluency. Now that language teachers can reach any student with an internet connection, 
								we believe anyone, anywhere in the world can become fluent in a foreign language.
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<i class="icon-lab2"></i>
						</span>
						<div class="desc">
							<h3><a href="#">Comment</a></h3>
							<p>"Mooc has helped me connect with native speakers and experienced language teachers. 
							It's ideal for people who can't be in the country,
							 but want to get busy speaking the language!"
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	

	<div id="fh5co-testimonial" style="background-image: url(resource/images/school.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2><span>推荐教师</span></h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="row animate-box">
						<div class="owl-carousel owl-carousel-fullwidth">
							<div class="item">
								<div class="testimony-slide active text-center">
									<div class="user" style="background-image: url(resource/images/person1.jpg);"></div>
									<span>Jean Cheng<br></span>
									<blockquote>
										<p>&ldquo;I am a certified public accountant with master's degree in finance, my mother tongue is Spanish, so I can help you understand different strategies and areas such as business, education, tourism and others.&rdquo;</p>
									</blockquote>
								</div>
							</div>
							<div class="item">
								<div class="testimony-slide active text-center">
									<div class="user" style="background-image: url(resource/images/person2.jpg);"></div>
									<span>Lars California<br></span>
									<blockquote>
										<p>&ldquo;I’m an American professional TEFL teacher, currently living in China. My teaching has mainly been at International Schools in Shanghai, since 2007. I hold a 120-hour teacher training qualification from INTESOL. &rdquo;</p>
									</blockquote>
								</div>
							</div>
							<div class="item">
								<div class="testimony-slide active text-center">
									<div class="user" style="background-image: url(resource/images/person3.jpg);"></div>
									<span>Evgenia<br></span>
									<blockquote>
										<p>&ldquo;Almost 15 years I’m teaching Russian both online and offline. I love the students who know well their goal.I’ll help you to learn your Russian through select crucial grammar, vocabulary and communicative strategies which suits your goal and help you to get it in the period of time you are ready to dedicate to the Russian language. &rdquo;</p>
									</blockquote>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-blog">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading"   id="contact"  >
					<h2>联系我们</h2>
				</div>
			</div>
			<div class="row row-padded-mb" >
				
				<div class="col-md-6 animate-box">
					<div class="fh5co-event">
						<div class="date text-center"><span>1<br>LinJ</span></div>
						<h3><a >Boss1</a></h3>
						<p>tel:13855558855 , Xiamen Software Park Guanri Road Buildng No.2 </p>
					</div>
				</div>
				<div class="col-md-6 animate-box">
					<div class="fh5co-event">
						<div class="date text-center"><span>2<br>LiuHW</span></div>
						<h3><a >Boss2</a></h3>
						<p>tel:15365254488 , 990 Changping Road, Building 8 Jing'an District, Shanghai, China</p>
					</div>
				</div>
				<div class="col-md-6 animate-box">
					<div class="fh5co-event">
						<div class="date text-center"><span>3<br>LuRX</span></div>
						<h3><a >Boss3</a></h3>
						<p>tel:15000000000 , Units 903-906A, 9/F, Kowloon Centre 33 Ashley Road, Tsimshatsui Kowloon, Hong Kong</p>
					</div>
				</div>
				<div class="col-md-6 animate-box">
					<div class="fh5co-event">
						<div class="date text-center"><span>4<br>LiXZ</span></div>
						<h3><a >Boss4</a></h3>
						<p>tel:13652524585 , Xiamen Software Park Wanghai Road Buildng No.32</p>
					</div>
				</div>
				
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="fh5co-blog animate-box">
						<a href="#" class="blog-img-holder" style="background-image: url(resource/images/project-1.jpg);"></a>
						<div class="blog-text">
							<h3><a href="#">Healty Lifestyle &amp; Living</a></h3>
							<span class="posted_on">March. 15th</span>
							<span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div> 
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="fh5co-blog animate-box">
						<a href="#" class="blog-img-holder" style="background-image: url(resource/images/project-2.jpg);"></a>
						<div class="blog-text">
							<h3><a href="#">Healty Lifestyle &amp; Living</a></h3>
							<span class="posted_on">March. 15th</span>
							<span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div> 
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="fh5co-blog animate-box">
						<a href="#" class="blog-img-holder" style="background-image: url(resource/images/project-3.jpg);"></a>
						<div class="blog-text">
							<h3><a href="#">Healty Lifestyle &amp; Living</a></h3>
							<span class="posted_on">March. 15th</span>
							<span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div> 
					</div>
				</div>
			</div>
		</div>
	</div>



	<div id="fh5co-register" style="background-image: url(resource/images/img_bg_2.jpg);">
		<div class="overlay"></div>
		<div class="row">
			<div class="col-md-8 col-md-offset-2 animate-box">
				<div class="date-counter text-center">
					<h2>Get 400 of Online Courses for Free</h2>
					<h3>By Mike Smith</h3>
					<div class="simply-countdown simply-countdown-one"></div>
					<p><strong>Limited Offer, Hurry Up!</strong></p>
					<p><a href="#" class="btn btn-primary btn-lg btn-reg">Register Now!</a></p>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-gallery" class="fh5co-bg-section">
		<div class="row text-center">
			<h2><span>Instagram Gallery</span></h2>
		</div>
		<div class="row">
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(resource/images/project-5.jpg);"></a>
			</div>
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(resource/images/project-2.jpg);"></a>
			</div>
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(resource/images/project-3.jpg);"></a>
			</div>
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(resource/images/project-4.jpg);"></a>
			</div>
		</div>
	</div>

	<footer id="fh5co-footer" role="contentinfo" style="background-image: url(resource/images/img_bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-3 fh5co-widget">
					<h3>About Education</h3>
					<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Learning</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Course</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Learn &amp; Grow</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Blog</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Testimonials</a></li>
						<li><a href="#">Handbook</a></li>
						<li><a href="#">Held Desk</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Engage us</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Marketing</a></li>
						<li><a href="#">Visual Assistant</a></li>
						<li><a href="#">System Analysis</a></li>
						<li><a href="#">Advertise</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Legal</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Find Designers</a></li>
						<li><a href="#">Find Developers</a></li>
						<li><a href="#">Teams</a></li>
						<li><a href="#">Advertise</a></li>
						<li><a href="#">API</a></li>
					</ul>
				</div>
			</div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">Copyright &copy; 2017.Mooc All rights reserved.</small> 
					</p>
				</div>
			</div>

		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="resource/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="resource/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="resource/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="resource/js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="resource/js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="resource/js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="resource/js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="resource/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="resource/js/jquery.magnific-popup.min.js"></script>
	<script src="resource/js/magnific-popup-options.js"></script>
	<!-- Count Down -->
	<script src="resource/js/simplyCountdown.js"></script>
	<!-- Main -->
	<script src="resource/js/main.js"></script>
	<script>
    var d = new Date(new Date().getTime() + 1000 * 120 * 120 * 2000);

    // default example
    simplyCountdown('.simply-countdown-one', {
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate()
    });

    //jQuery example
    $('#simply-countdown-losange').simplyCountdown({
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate(),
        enableUtc: false
    });
	</script>
	</body>
</html>

