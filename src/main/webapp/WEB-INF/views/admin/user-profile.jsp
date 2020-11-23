<%@page import="com.spring.project.member.dao.MemberDao"%>
<%@page import="com.spring.project.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<!-- Btn 비활성화 -->
<style>
.non-active{
	pointer-events: none;
	background-color : gray;
}
</style>
<!-- Mirrored from educhamp.themetrades.com/demo/admin/user-profile.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:11:35 GMT -->
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
	<link rel="icon" href="index.do" type="image/x-icon" />
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
	<!-- header start -->
	<header class="ttr-header">
		<div class="ttr-header-wrapper">
			<!--logo start -->
			<div class="ttr-logo-box">
				<div>
					<a href="index.do" class="ttr-logo">
						<img alt="" class="ttr-logo-mobile" src="${contextPath }/resources/admin/assets/images/logo-mobile.png" width="30" height="30">
						<img alt="" class="ttr-logo-desktop" src="${contextPath }/resources/admin/assets/images/logo-white.png" width="160" height="27">
					</a>
				</div>
			</div>
			<!--header search panel start -->
			<div class="ttr-search-bar">
				<form class="ttr-search-form">
					<div class="ttr-search-input-wrapper">
						<input type="text" name="qq" placeholder="search something..." class="ttr-search-input">
						<button type="submit" name="search" class="ttr-search-submit"><i class="ti-arrow-right"></i></button>
					</div>
					<span class="ttr-search-close ttr-search-toggle">
						<i class="ti-close"></i>
					</span>
				</form>
			</div>
			<!--header search panel end -->
		</div>
	</header>
	<!-- header end -->
	<!-- Left sidebar menu start -->
	<div class="ttr-sidebar">
		<div class="ttr-sidebar-wrapper content-scroll">
			<!-- side menu logo start -->
			<div class="ttr-sidebar-logo">
				<a href="#"><img alt="" src="${contextPath }/resources/admin/assets/images/logo.png" width="122" height="27"></a>
				<div class="ttr-sidebar-toggle-button">
					<i class="ti-arrow-left"></i>
				</div>
			</div>
		</div>
	</div>
	<!-- Left sidebar menu end -->

	<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">My Page</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="index.do"><i class="fa fa-home"></i>Home</a></li>
					<li>User Profile</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>마이 페이지</h4>
						</div>
						<div class="widget-inner">
							<form class="edit-profile m-b30">
								<div class="">
									<div class="form-group row">
										<div class="col-sm-10  ml-auto">
											<h3>My Page</h3>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">ID</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" value="${member.id}" disabled>
										</div> 
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Name</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" value="${member.name}"disabled>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Email</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" value="${member.email}"disabled>
											<!-- <span class="help">If you want your invoices addressed to a company. Leave blank to use your full name.</span> -->
										</div>
									</div>
								</div>
							</form>
							<form class="edit-profile" action="updatePw.do" method="get">
								<div class="">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Current Password</label>
										<div class="col-sm-7">
											<input class="form-control" type="password" name="CuPw" value="">
											<div id="checkmsg"></div>	
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">New Password</label>
										<div class="col-sm-7">
											<input class="form-control" type="password" name="NwPw" value="" disabled>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Re-check Password</label>
										<div class="col-sm-7">
											<input class="form-control" type="password" name="NwPwOk" value="" disabled>
											<div id="checkmsgpw"></div>	
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-2">
									</div>
									<div class="col-sm-7" style="text-align: right;">
										<button type="button" onclick="location.href='deleteProc.do' " id="deleteMember" class="btn non-active" >회원탈퇴</button>
										<button type="submit" onclick="buttonClick()" id="savePw" class="btn non-active" >비밀번호 저장</button>
									</div>
								</div>
									 
							</form>
						</div>
					</div>
				</div>
				<!-- Your Profile Views Chart END-->
			</div>
		</div>
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

<script>
var pwRule = /^[a-zA-Z0-9]{2,12}$/;

$(document).ready(function(){
	pwCheck();
	nwpwCheck();
})

function buttonClick() {
	location.href="index.do"
}

function pwCheck(){
	$('input[name=CuPw]').blur(function(){
		var pw = '${member.pw}';
		var pwOk = $('input[name=CuPw]').val();
		var color;
		var msg;
		if(pw!=pwOk){
			console.log("비번불일치")
			msg= '비밀번호가 일치하지 않습니다.'
			color='blue';
		}
		else{
			console.log("비번일치")
			msg= '새로운 비밀번호를 입력하세요.'
			color='blue';
			$('input[name=NwPw]').removeAttr('disabled');
			$('input[name=NwPwOk]').removeAttr('disabled'); 
		}
		$('#checkmsg').text(msg);
		$('#checkmsg').css('color',color);
	})
}

function nwpwCheck(){
	$('input[name=NwPwOk]').blur(function(){
		var NwPw = $('input[name=NwPw]').val();
		var NwPwOk = $('input[name=NwPwOk]').val();
		var pw = $('input[name=CuPw]').val();
		var color;
		var msg;
		if(NwPw!=pw && NwPw==NwPwOk){
			console.log('비번일치')
			msg= '비밀번호를 사용할 수 있습니다.';
			color='blue';
			$('#deleteMember').removeClass('non-active');
			$('#savePw').removeClass('non-active');
		}
		else{
			console.log('비번일치노노')
			msg = '비밀번호가 일치하지 않습니다.';
			color='red';
		}
		$('#checkmsgpw').text(msg);
		$('#checkmsgpw').css('color',color);
	})
}

</script>
</html>
