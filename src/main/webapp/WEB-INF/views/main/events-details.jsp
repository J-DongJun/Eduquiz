<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>

	<!-- META ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
	
	<!-- DESCRIPTION -->
	<meta name="description" content="EduChamp : Education HTML Template" />
	
	<!-- OG -->
	<meta property="og:title" content="EduChamp : Education HTML Template" />
	<meta property="og:description" content="EduChamp : Education HTML Template" />
	<meta property="og:image" content="" />
	<meta name="format-detection" content="telephone=no">
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="${contextPath }/resources/main_assets/assets/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="${contextPath }/resources/main_assets/assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>EduChamp : Education HTML Template </title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/main_assets/assets/css/assets.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/main_assets/assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/main_assets/assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/main_assets/assets/css/style.css">
	<link class="skin" rel="stylesheet" type="text/css" href="${contextPath }/resources/main_assets/assets/css/color/color-1.css">
	
</head>
<body id="bg">
<div class="page-wraper">
<div id="loading-icon-bx"></div>
<div class="onepage"></div>
    <!-- Header Top ==== -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- Header Top END ==== -->
    <!-- Content -->
    <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="page-banner ovbl-dark" style="background-image:url(${contextPath }/resources/main_assets/assets/images/banner/banner1.jpg);">
            <div class="container">
                <div class="page-banner-entry">
                    <h1 class="text-white">
                    	<c:choose>
                    		<c:when test="${category == 1 }">정보처리기사</c:when>
                    		<c:when test="${category == 2 }">정보보안기사</c:when>
                    		<c:when test="${category == 3 }">리눅스 마스터</c:when>
                    		<c:when test="${category == 4 }">영단어 마스터</c:when>
                    		<c:when test="${category == 5 }">한국사 능력시험</c:when>
                    	</c:choose>
                    </h1>
				 </div>
            </div>
        </div>
		<!-- Breadcrumb row -->
		<div class="breadcrumb-row">
			<div class="container">
				<ul class="list-inline">
					<li><a href="/">Home</a></li>
					<li><a href="/">문제집 선택</a>
					<li>
						<c:choose>
                    		<c:when test="${category == 1 }">정보처리기사</c:when>
                    		<c:when test="${category == 2 }">정보보안기사</c:when>
                    		<c:when test="${category == 3 }">리눅스 마스터</c:when>
                    		<c:when test="${category == 4 }">영단어 마스터</c:when>
                    		<c:when test="${category == 5 }">한국사 능력시험</c:when>
                    	</c:choose>
					</li>
				</ul>
			</div>
		</div>
		<!-- Breadcrumb row END -->
        <!-- inner page banner END -->
		<div class="content-block">
            <!-- About Us -->
			<div class="section-area section-sp1">
                <div class="container">
					 <div class="row">
						<div class="col-lg-8 col-md-7 col-sm-12">
							<div class="courses-post">
								<div class="ttr-post-media media-effect">
									<c:choose>
												<c:when test="${category == 1 }">
												<a href="#"><img src="${contextPath }/resources/main_assets/assets/images/blog/default/engineer.png" alt=""></a>
												</c:when>
												<c:when test="${category == 2 }">
												<img src="${contextPath }/resources/main_assets/assets/images/blog/default/security.png" alt="">
												</c:when>
												<c:when test="${category == 3 }">
												<img src="${contextPath }/resources/main_assets/assets/images/blog/default/linux.png" alt="">
												</c:when>
												<c:when test="${category == 4 }">
												<img src="${contextPath }/resources/main_assets/assets/images/blog/default/english.png" alt="">
												</c:when>
												<c:when test="${category == 5 }">
												<img src="${contextPath }/resources/main_assets/assets/images/blog/default/korean.png" alt="">
												</c:when>
									</c:choose>
								</div>
								<div class="ttr-post-info">
									<div class="ttr-post-title ">
										<h2 class="post-title">
											<c:choose>
												<c:when test="${category == 1 }">정보처리기사?</c:when>
												<c:when test="${category == 2 }">정보보안기사?</c:when>
												<c:when test="${category == 3 }">리눅스 마스터?</c:when>
												<c:when test="${category == 4 }">영단어 마스터?</c:when>
												<c:when test="${category == 5 }">한국사 능력시험?</c:when>
											</c:choose>
										</h2>
									</div>
									<div class="ttr-post-text">
										<p>
											<c:choose>
												<c:when test="${category == 1 }">
												과학기술정보통신부에서 주관하고 한국산업인력공단에서 시행하는 국가자격 시험 및 그 자격증을 의미한다.<br>
												소프트웨어 개발 관련 자격증으로, 정보시스템의 생명주기 전반에 걸친 프로젝트 업무를 수행하는 직무로서
												계획수립, 분석, 설계, 구현, 시험, 운영, 유지보수 등의 업무를 수행할 수 있는 능력을 검증하는 시험이다.<br>
												1년에 3회로 시험이 실시되고 있다. 2020년부터 NCS 표준에 맞춰 시험 과목이 필기, 실기 모두를 포함해 대폭 개편되었다.<br>
												</c:when>
												<c:when test="${category == 2 }">
												과학기술정보통신부에서 주관하고 한국인터넷진흥원에서 시행하는 국가자격 시험 및 그 자격증을 의미한다.<br>
												KISA(한국인터넷진흥원)에서 시행하는 국가기술자격 시험으로서, 기존 국가공인 민간자격증인
												'정보보호전문가(SIS)' 자격증을 국가기술자격으로 업그레이드시킨 자격이다.<br>
												(기존 정보보호전문가 자격 보유자에게는 2년간 필기 면제 혜택을 주었다.)2013년부터 시작하여 1년에 2회씩 시험을 본다.<br>
												응시 자격은 정보처리기사와 동일하게 관련학과가 의미가 없고 4학년이면 볼 수 있다. "4년제 대학 졸업자 혹은 졸업예정자",
												"3년제는 졸업 + 동일 및 유사직종 실무 경력 1년", "2년제는 졸업 + 동일 및 유사직종 실무경력 2년", 이도저도 아니면
												"동일 및 유사직종 4년 경력"으로도 응시 가능하다. 지역은 5개 지역으로 서울, 부산, 대전, 대구, 광주에서 응시할 수 있으며
												응시료는 기존의 기사 시험과 동일하다.정보보안기사 자격증이 있으면 독학학위제를 통하여 정보통신학 학사 학위 취득이 가능하다.<br>
												</c:when>
												<c:when test="${category == 3 }">
												한국정보통신진흥협회가 운영하는 국가 공인 민간 자격증이다.<br>
												리눅스 기반의 Desktop 활용 및 Server 운영 능력, 리눅스 시스템의 설계 개발 및 관리 능력,
												리눅스 기반의 네트워크 및 서버 구축/운영 능력을 검정하는 자격증이다.<br>
												생각보다 인지도가 꽤 있는 자격증으로 매년 응시수가 늘어나고 있다.<br>
												</c:when>
												<c:when test="${category == 4 }">
												본 사이트의 영어단어는 TOEIC을 기준으로 만들어져 있다.<br>
												Test of English for International Communication(국제상 의사소통을 목적한 영어 시험)의
												약자로서 영어가 모국어가 아닌 사람이 일상생활이나 사업 현장에서 필요한 실용에 알맞은 영어 구사 능력을 갖추었는지 평가하는 시험이다.<br>
												토익은 미국 ETS(Educational Testing Service)의 주관하에 치르는 시험이고 듣기 및 읽기 시험인 TOEIC,
												말하기 및 쓰기 시험인 TOEIC Speaking and Writing Tests 등이 있으며, 보통 토익이라고 말하면 듣기 및 읽기 시험,
												토스나 TOEIC Speaking 시험이라고 말하면 말하기 시험을 가리킨다<br>
												</c:when>
												<c:when test="${category == 5 }">
												교육부 소속 기관인 국사편찬위원회가 주관하는, 한국사 능력을 평가하고 검정하는 시험이다.<br>
												초기엔 고급 기준 대학교 학부 이상 수준의 어려운 내용에 한문 독해력 등 고난도에 더불어 낮은 인지도 및 활용도 때문에
												일부 역사 매니아를 제외하곤 인기가 없었으나, 취업 등에 가산점을 주는 등의 활용도가 높아지면서 지원자가 많이 늘었다.<br>
												1회는 1~2급이 출제되지 않았다. 2~3회는 1~6급을 모두 따로 쳤으나 2008년(4회)부터 1~2급이 고급,
												5~6급이 초급으로 개편됐고 2011년(11회)부터 3~4급이 중급으로 개편됐다.<br>
												2020년 6월(47회)부터 기존의 초, 중, 고급 3종이 기본(4~6급)과 심화(1~3급) 2종으로 재개편됐다.<br>
												등급 체계 개편의 이유는 상세히 밝히진 않았으나, 2018년 시험 전체 응시자의 94%가 중, 고급을 응시해 초급시험이 유명무실해진 것 때문으로 보인다.<br>
												초급을 응시해 받는 5~6급은 그 어떤 서류전형에서도 쓸모 없기 때문. 2021년부터 개편된 공무원 시험도 영향이 있는 것으로 보인다.<br>
												심화 시험의 난도는 기존의 고급 시험보다 평이한 수준으로, 기본 시험의 난도는 기존의 초급 시험보다 약간 어려운 수준으로 조절해 출제된다<br>
												</c:when>
											</c:choose>
										</p>
									</div>
								</div>
							</div>
							<!-- <div class="courese-overview" id="overview">
								<div class="row">
									<div class="col-md-12 col-lg-5">
										<ul class="course-features">
											<li><i class="ti-book"></i> <span class="label">Topics</span> <span class="value">Web design</span></li>
											<li><i class="ti-help-alt"></i> <span class="label">Host</span> <span class="value">EduChamp</span></li>
											<li><i class="ti-time"></i> <span class="label">Location</span> <span class="value">#45 Road</span></li>
											<li><i class="ti-stats-up"></i> <span class="label">Skill level</span> <span class="value">Beginner</span></li>
											<li><i class="ti-smallcap"></i> <span class="label">Language</span> <span class="value">English</span></li>
											<li><i class="ti-user"></i> <span class="label">Students</span> <span class="value">32</span></li>
											<li><i class="ti-check-box"></i> <span class="label">Assessments</span> <span class="value">Yes</span></li>
										</ul>
									</div>
									<div class="col-md-12 col-lg-7">
										<h5 class="m-b5">Event Description</h5>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
										<h5 class="m-b5">Certification</h5>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
										<h5 class="m-b5">Event Content</h5>
										<ul class="list-checked primary">
											<li>Over 37 lectures and 55.5 hours of content!</li>
											<li>LIVE PROJECT End to End Software Testing Training Included.</li>
											<li>Learn Software Testing and Automation basics from a professional trainer from your own desk.</li>
											<li>Information packed practical training starting from basics to advanced testing techniques.</li>
											<li>Best suitable for beginners to advanced level users and who learn faster when demonstrated.</li>
											<li>Course content designed by considering current software testing technology and the job market.</li>
											<li>Practical assignments at the end of every session.</li>
											<li>Practical learning experience with live project work and examples.cv</li>
										</ul>
									</div>
								</div>
							</div> -->
						</div>
						<div class="col-lg-4 col-md-5 col-sm-12 m-b30">
							<div class="bg-primary text-white contact-info-bx m-b30">
								<h2 class="m-b10 title-head">문제 풀기</h2>
								<p>당신의 문제풀이 능력을 시험해 보자!</p>
								<div class="widget widget_getintuch">	
									<ul>
										<li><a href="short-answer.do" style="color:#fff;"><i class="ti-direction"></i>주관식</a></li>
										<li><a href="select-answer.do" style="color:#fff;"><i class="ti-direction"></i>객관식</a></li>
										<li><i class="ti-tag"></i>출처 : quizlet.com</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>
		<!-- contact area END -->
		
    </div>
    <!-- Content END-->
	<!-- Footer ==== -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer END ==== -->
    <button class="back-to-top fa fa-chevron-up" ></button>
</div>
<!-- External JavaScripts -->
<script src="${contextPath }/resources/main_assets/assets/js/jquery.min.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/counter/waypoints-min.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/counter/counterup.min.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/masonry/masonry.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/masonry/filter.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="${contextPath }/resources/main_assets/assets/js/functions.js"></script>
<script src="${contextPath }/resources/main_assets/assets/js/contact.js"></script>
<script src="${contextPath }/resources/main_assets/assets/vendors/switcher/switcher.js"></script>
</body>

</html>
