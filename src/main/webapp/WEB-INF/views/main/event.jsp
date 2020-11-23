<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

<!-- 카테고리 셀렉하는 페이지 -->
<style>
.action-box > img{
	width : 
}
</style>
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
	<!-- Header Top ==== -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- Header Top END ==== -->
    <!-- Content -->
    <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="page-banner ovbl-dark" style="background-image:url(${contextPath }/resources/main_assets/assets/images/banner/banner3.jpg);">
            <div class="container">
                <div class="page-banner-entry">
                    <h1 class="text-white">문제집 선택<br>Select your category!</h1>
				 </div>
            </div>
        </div>
		<!-- Breadcrumb row -->
		<div class="breadcrumb-row">
			<div class="container">
				<ul class="list-inline">
					<li><a href="index.do">Home</a></li>
					<li>문제집 선택</li>
				</ul>
			</div>
		</div>
		<!-- Breadcrumb row END -->
        <!-- contact area -->
        <div class="content-block">
			<!-- Portfolio  -->
			<div class="section-area section-sp1 gallery-bx">
				<div class="container">
					<div class="feature-filters clearfix center m-b40">
						<ul class="filters" data-toggle="buttons">
							<li data-filter="" class="btn active">
								<input type="radio">
								<a href="#"><span>모든 문제집</span></a> 
							</li>
							<li data-filter="data-processing" class="btn">
								<input type="radio">
								<a href="#"><span>정보처리기사</span></a> 
							</li>
							<li data-filter="data-security" class="btn">
								<input type="radio">
								<a href="#"><span>정보보안기사</span></a> 
							</li>
							<li data-filter="linux" class="btn">
								<input type="radio">
								<a href="#"><span>리눅스</span></a> 
							</li>
							<li data-filter="english" class="btn">
								<input type="radio">
								<a href="#"><span>영단어</span></a> 
							</li>
							<li data-filter="korean-history" class="btn">
								<input type="radio">
								<a href="#"><span>한국사</span></a> 
							</li>
						</ul>
					</div>
					<div class="clearfix">
						<ul id="masonry" class="ttr-gallery-listing magnific-image row">
							<li class="action-card col-lg-6 col-md-6 col-sm-12 data-processing">
								<div class="event-bx m-b30">
									<div class="action-box">
										<a href="selectedCategory.do?queryType=${queryType}&category=1">
											<img src="${contextPath }/resources/main_assets/assets/images/event/engineer.png" alt="">
										</a>
									</div>

									<div class="info-bx d-flex">
										<div>
											<div class="event-time">
												<div class="event-date">14</div>
													<div class="event-month">Nobemver</div>
										</div>
										</div>

										<div class="event-info">
											<h4 class="event-title"><a href="selectedCategory.do?queryType=${queryType}&category=1">정보처리기사</a></h4>
											<ul class="media-post">
												<li><i class="fa fa-clock-o"></i> 9:30am 11:59am</a></li>
											</ul>
											<p>공대생의 필수품 정보처리기사!</p>
										</div>
									</div>
								</div>

							</li>
							<li class="action-card col-lg-6 col-md-6 col-sm-12 data-security">
								<div class="event-bx m-b30">
									<div class="action-box">
										<a href="selectedCategory.do?queryType=${queryType}&category=2">
											<img src="${contextPath }/resources/main_assets/assets/images/event/security.png" alt="">
										</a>
									</div>
									<div class="info-bx d-flex">
										<div>
											<div class="event-time">
												<div class="event-date">07</div>
												<div class="event-month">November</div>
											</div>
										</div>
										<div class="event-info">
											<h4 class="event-title"><a href="selectedCategory.do?queryType=${queryType}&category=2">정보보안기사</a></h4>
											<ul class="media-post">
												<li><i class="fa fa-clock-o"></i> 9:30am 11:59am</a></li>
											</ul>
											<p>나도 할 수 있다! 정보보안기사</p>
										</div>
									</div>
								</div>
							</li>
							<li class="action-card col-lg-6 col-md-6 col-sm-12 linux">
								<div class="event-bx m-b30">
									<div class="action-box">
										<a href="selectedCategory.do?queryType=${queryType}&category=3">
											<img src="${contextPath }/resources/main_assets/assets/images/event/linux.png" alt="">
										</a>
									</div>
									<div class="info-bx d-flex">
										<div>
											<div class="event-time">
												<div class="event-date">27</div>
												<div class="event-month">October</div>
											</div>
										</div>
										<div class="event-info">
											<h4 class="event-title"><a href="selectedCategory.do?queryType=${queryType}&category=3">리눅스 마스터</a></h4>
											<ul class="media-post">
												<li><i class="fa fa-clock-o"></i> 9:30am 11:59am</a></li>
											</ul>
											<p>필수 OS 리눅스를 알아보자</p>
										</div>
									</div>
								</div>
							</li>
							<li class="action-card col-lg-6 col-md-6 col-sm-12 english">
								<div class="event-bx m-b30">
									<div class="action-box">
										<a href="selectedCategory.do?queryType=${queryType}&category=4">
											<img src="${contextPath }/resources/main_assets/assets/images/event/english.png" alt="">
										</a>
									</div>
									<div class="info-bx d-flex">
										<div>
											<div class="event-time">
												<div class="event-date">05</div>
												<div class="event-month">December</div>
											</div>
										</div>
										<div class="event-info">
											<h4 class="event-title"><a href="selectedCategory.do?queryType=${queryType}&category=4">영단어 마스터</a></h4>
											<ul class="media-post">
												<li><i class="fa fa-clock-o"></i> 9:30am 11:59am</a></li>
											</ul>
											<p>토익 영단어 정복기</p>
										</div>
									</div>
								</div>
							</li>
							<li class="action-card col-lg-6 col-md-6 col-sm-12 korean-history">
								<div class="event-bx m-b30">
									<div class="action-box">
										<a href="selectedCategory.do?queryType=${queryType}&category=5">
										<img src="${contextPath }/resources/main_assets/assets/images/event/korean.png" alt="">
										</a>
									</div>
									<div class="info-bx d-flex">
										<div>
											<div class="event-time">
												<div class="event-date">06</div>
												<div class="event-month">November</div>
											</div>
										</div>

										<div class="event-info">
											<h4 class="event-title"><a href="selectedCategory.do?queryType=${queryType}&category=5">한국사 능력시험</a></h4>
											<ul class="media-post">
												<li><i class="fa fa-clock-o"></i> 9:30am 11:59am</a></li>
											</ul>
											<p>태정태세문단세 한국을 빛낸 100명의 위인들!</p>
										</div>
									</div>
								</div>
							
								<div class="col-lg-12 m-b20">
									<div class="pagination-bx rounded-sm gray clearfix">
										<ul class="pagination">
											<li class="previous"><a href="#"><i class="ti-arrow-left"></i> Prev</a></li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li class="next"><a href="#">Next <i class="ti-arrow-right"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>
		<!-- contact area END -->
    <!-- Content END-->
	<!-- Footer ==== -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer END ==== -->
    <button class="back-to-top fa fa-chevron-up" ></button>
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
