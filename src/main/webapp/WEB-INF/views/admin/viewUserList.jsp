<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from educhamp.themetrades.com/demo/admin/courses.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:10:19 GMT -->
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
	<link rel="icon" href="../main/error-404.jsp" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="${contextPath }/resources/admin/assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>EduChamp : Education HTML Template </title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/assets.css">
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/vendors/calendar/fullcalendar.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/style.css">
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/dashboard.css">
	<link class="skin" rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/color/color-1.css">
	
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">
	
	<!-- header start -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- header end -->
	<!-- Left sidebar menu start -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- Left sidebar menu end -->

	<!--Main container start -->
	<main class="ttr-wrapper">
		<!-- user list -->
				<div class="widget-box">
						<div class="wc-title">
							<h4>User List</h4>
						</div>
						<div class="widget-inner">
							<div class="new-user-list">
								<ul>
									<c:forEach var="members" items="${memList}">
										<li class="a_list">
											<span class="new-users-text">
												<span>ID   :   </span>
												<span class="new-users-info">${members.id }</span>
												&emsp;&emsp;
												<span>NAME   :   </span>
												<span class="new-users-info">${members.name }</span>
												&emsp;&emsp;
												<span>EMAIL :   </span>
												<span class="new-users-info">${members.email }</span>
											</span>
											<span class="new-users-btn">
												<a href="/project/admin/removeMember.do?id=${members.id }"
												onclick="return confirm('${members.name} 님을 삭제하시겠습니까?');" class="btn button-sm outline">탈퇴</a>
											</span>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
			<!-- user list end -->
	</main>
	<div class="ttr-overlay"></div>

<!-- External JavaScripts -->
<script src="${contextPath }/resources/admin/assets/js/jquery.min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/counter/waypoints-min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/counter/counterup.min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/masonry/masonry.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/masonry/filter.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/scroll/scrollbar.min.js"></script>
<script src="${contextPath }/resources/admin/assets/js/functions.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/chart/chart.min.js"></script>
<script src="${contextPath }/resources/admin/assets/js/admin.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/switcher/switcher.js"></script>


</body>

<!-- Mirrored from educhamp.themetrades.com/demo/admin/courses.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:11:35 GMT -->

</html>