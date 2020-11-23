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
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/main_assets/assets/css/cardflip.css">
	
	<!-- Swiper -->
	<link rel="stylesheet" href="${contextPath }/resources/main_assets/assets/vendors/swiper/css/swiper.css">
	<link rel="stylesheet" href="${contextPath }/resources/main_assets/assets/vendors/swiper/css/swiper.min.css">
	<script src="${contextPath }/resources/main_assets/assets/vendors/swiper/js/swiper.js"></script>
	<script src="${contextPath }/resources/main_assets/assets/vendors/swiper/js/swiper.min.js"></script>

	

</head>
<body id="bg">
<div class="page-wraper">
 
	<div id="loading-icon-bx"></div>
	<!-- Header Top ==== -->
	<jsp:include page="header.jsp"></jsp:include>
    <!-- Header Top END ==== -->
    <!-- Inner Content Box ==== -->
    <div class="page-content">
        <!-- Page Heading Box ==== -->
        <div class="page-banner ovbl-dark" style="background-image:url(${contextPath }/resources/main_assets/assets/images/banner/banner3.jpg);">
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
 
		<div class="breadcrumb-row">
			<div class="container">
				<ul class="list-inline">
					<li><a href="index.do">Home</a></li>
					<li>문제집 선택</li>
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
		<!-- Page Heading Box END ==== -->
		<!-- Page Content Box ==== -->
		<div class="swiper-container">
		<!-- Additional required wrapper -->
		<div class="swiper-wrapper">
		<!-- Slides -->
		<c:forEach items="${allQuizList}" var="quiz">
			<div class="swiper-slide">
				<div class="thecard">
					<div class="thefront">
						<p style="text-align:center;">
						${quiz.quiz }
						</p>
					</div>
					<div class="theback">
						<p style="text-align:center;">
						${quiz.answer }
						<p>
						<button onclick = window.open("addToMyVoca.do?quizCode=${quiz.quiz_code}")>단어장에 추가</button>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
		<!-- If we need navigation buttons -->
		<div class="swiper-button-prev"></div> 
		<div class="swiper-button-next"></div>
		</div>

		<!-- Page Content Box END ==== -->

    </div>
    <!-- Inner Content Box END ==== -->
    <!-- Footer ==== -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer END ==== -->
    <button class="back-to-top fa fa-chevron-up"></button>
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
<script>
    var swiper = new Swiper('.swiper-container', {
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  </script>
</body>


</html>
