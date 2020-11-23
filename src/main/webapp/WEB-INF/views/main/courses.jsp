<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<!--  -->
<!--  -->

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

    <!-- Header Top ==== -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- header END ==== -->
    <!-- Content -->
    <div class="page-content bg-white">
        <!-- inner page banner -->
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
		<!-- Breadcrumb row -->
		<div class="breadcrumb-row">
			<div class="container">
				<ul class="list-inline">
					<li><a href="index.do">Home</a></li>
					<li>Our Courses</li>
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
						<div class="col-lg-3 col-md-4 col-sm-12 m-b30">
							<div class="widget courses-search-bx placeani">
								<div class="form-group">
									<div class="input-group">
										 <label>단어찾기</label>
                              <input type="text" id="vocaSearch" required class="form-control">	
									</div>
								</div>
							</div>
							<div class="widget widget_archive">
                                <h5 class="widget-title style-1">나의 단어장</h5>
                                <ul>
                                    <li><a href="engineer.do?category=1">정보처리기사 </a></li>
									<li><a href="security.do?category=2">정보보안기사</a></li>
									<li><a href="linux.do?category=3">리눅스 마스터</a></li>
									<li><a href="english.do?category=4">영단어 마스터</a></li>
									<li><a href="korean-history.do?category=5">한국사 능력시험</a></li>
                                </ul>
                            </div>
							<div class="widget">
							</div>
						</div>
						
						<!-- 단어장 들어갈 공간 -->
						<div class="voca_place">
                         <div class="voca_table">
                      	<c:forEach var="quizes" items="${getMyQuizList}">
                         	<div class="voca_table2">
	                           <div class="voca_answer">${quizes.answer }</div>
	                           <div class="line1"></div>
	                           <div class="voca_quiz">${quizes.quiz }</div>
	                           <div class="line2"></div>
	                           <div class="voca_delete">
		                           	<a href="/project/removeVoca.do?code=${quizes.quiz_code }"
		                           	onclick="return confirm('삭제하시겠습니까?');">
		                           	<i class="far fa-trash-alt" style="font-size:2rem;"></i>
		                           	</a>
	                           </div>
	                         </div> <!-- voca_table2 END -->
	                   	 </c:forEach> 
                         </div> <!--voca_table END  -->
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
<script src="https://kit.fontawesome.com/c217175639.js" crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
		$("#vocaSearch").keyup(function(){
			var k = $(this).val();
			$(".voca_table2").hide();
			var temp = $(".voca_table > .voca_table2:contains('" + k + "')");
			$(temp).show();
		});
	});
</script>
</body>

</html>
