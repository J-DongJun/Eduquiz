<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header class="ttr-header">
		<div class="ttr-header-wrapper">
			<!--sidebar menu toggler start -->
			<div class="ttr-toggle-sidebar ttr-material-button">
				<i class="ti-close ttr-open-icon"></i>
				<i class="ti-menu ttr-close-icon"></i>
			</div>
			<!--sidebar menu toggler end -->
			<!--logo start -->
			<div class="ttr-logo-box">
				<div>
					<a href="index.do" class="ttr-logo">
						<img class="ttr-logo-mobile" alt="" src="${contextPath }/resources/main_assets/assets/images/logo3.png" width="30" height="30">
						<img class="ttr-logo-desktop" alt="" src="${contextPath }/resources/main_assets/assets/images/logo3.png" width="160" height="27">
					</a>
				</div>
			</div>
			<!--logo end -->
			<div class="ttr-header-menu">
				<!-- header left menu start -->
				<ul class="ttr-header-navigation">
					<li>
						<a href="../index.do" class="ttr-material-button ttr-submenu-toggle">HOME</a>
					</li>
					<li>
						<a href="#" class="ttr-material-button ttr-submenu-toggle">QUICK MENU <i class="fa fa-angle-down"></i></a>
						<div class="ttr-header-submenu">
							<ul>
								<li><a href="viewUser.do">회원 관리</a></li>
								<li><a href="viewBrd">게시글 관리</a></li>
								<li><a href="quizes.do">문제집 관리</a></li>
								<li><a href="calender.do">내 일정 관리</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<!-- header left menu end -->
			</div>
			<div class="ttr-header-right ttr-with-seperator">
				<!-- header right menu start -->
				<ul class="ttr-header-navigation">
					<li>
						<a href="#" class="ttr-material-button ttr-search-toggle"><i class="fa fa-search"></i></a>
					</li>
					<li>
						<a href="#" class="ttr-material-button ttr-submenu-toggle"><span class="ttr-user-avatar"><img alt="" src="${contextPath }/resources/admin/assets/images/testimonials/pic3.jpg" width="32" height="32"></span></a>
						<div class="ttr-header-submenu">
							<ul>
								<li><a onclick="logoutProc()">로그아웃</a></li>
							</ul>
						</div>
					</li>
					<li class="ttr-hide-on-mobile">
						<a href="#" class="ttr-material-button"><i class="ti-layout-grid3-alt"></i></a>
						<div class="ttr-header-submenu ttr-extra-menu">
							<a href="quizes.do">
								<i class="fa fa-edit"></i>
								<span>게시글 관리</span>
							</a>
							<a href="viewBrd.do">
								<i class="fa fa-book"></i>
								<span>문제집 관리</span>
							</a>
							<a href="viewUser.do">
								<i class="fa fa-users"></i>
								<span>회원 관리</span>
							</a>
							<a href="calender.do">
								<i class="fa fa-calendar"></i>
								<span>내 일정 관리</span>
							</a>
						</div>
					</li>
				</ul>
				<!-- header right menu end -->
			</div>
			<!--header search panel start -->
			<div class="ttr-search-bar">
				<form class="ttr-search-form">
					<div class="ttr-search-input-wrapper">
						<input type="text" id="searchInput" placeholder="search something..." class="ttr-search-input">
					</div>
					<span class="ttr-search-close ttr-search-toggle">
						<i class="ti-close" onclick="pressX()"></i>
					</span>
				</form>
			</div>
			<!--header search panel end -->
		</div>
	</header>
<script src="${contextPath }/resources/main_assets/assets/js/jquery.min.js"></script>
<script>
	function pressX(){
		$("#searchInput").val("");
		$(".a_list").hide();
		var temp = $(".a_list:contains('')");
		$(temp).show();
	}

	$(document).ready(function(){
		$("#searchInput").keyup(function(){
			var k = $(this).val();
			$(".a_list").hide();
			var temp = $(".a_list:contains('" + k + "')");
			$(temp).show();
		});
	});
	
	function logoutProc(){
		sessionStorage.removeItem("admin");
		location.href="logout.do";
	}
</script>
</body>
</html>