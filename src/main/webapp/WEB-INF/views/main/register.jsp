<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

<!-- SignUp Btn 비활성화 -->
<style>
.non-active{
	pointer-events: none;
	background-color : gray;
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
	<div class="account-form">
		<div class="account-head" style="background-image:url(${contextPath }/resources/main_assets/assets/images/background/bg2.jpg);">
			<a href="index.do"><img src="${contextPath }/resources/main_assets/assets/images/logo-white-2.png" alt=""></a>
		</div>
		<div class="account-form-inner">
			<div class="account-container">
				<div class="heading-bx left">
					<h2 class="title-head">Sign Up <span>Now</span></h2>
					<p>Login Your Account <a href="login.do">Click here</a></p>
				</div>	
				<form class="contact-bx" action="addmember.do" method="get">
					<div class="row placeani">
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group"> 
									<label>Your ID</label>
									<input name="RgId" type="text" class="form-control" required="">
									<div id="checkmsg"></div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group"> 
									<label>Your Password</label>
									<input name="RgPw" type="password" class="form-control" required="">
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group"> 
									<label>Your Password Check</label>
									<input name="RgPwOk" type="password" class="form-control" required="">
									<div id="checkmsgpw"></div>								
								</div>
							</div>
						</div>		
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Your Name</label>
									<input name="RgName" type="text" required="" class="form-control">
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Your Email Address</label>
									<input name="RgEmail" type="email" required="" class="form-control">
								</div>
							</div>
						</div>
						
						<div class="col-lg-12 m-b30" style="text-align: right;">
							<button name="submit" type="submit" value="Submit" class="btn button-md" >Sign Up</button>
						</div>
						<div class="col-lg-12">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
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

<script type="text/javascript">
var idRule = /^[a-zA-Z0-9]{2,12}$/;
var pwRule = /^[a-zA-Z0-9]{2,12}$/;
$(document).ready(function(){
	idCheck();
	pwCheck();
});
function idCheck (){
	$('input[name=RgId]').blur(function(){
		var idCheck= $('input[name=RgId]').val();
		if(idRule.test(idCheck)){
			$.ajax({
				url:'idcheck.do?idcheck='+idCheck,
				type:'post',
				success:function(data){
					var color;
					var msg;
					if(data>0){
						console.log("아디일치노노")
						msg=' 이미 있는 아이디 입니다. ';
						$("[name=submit]").addClass('non-active');
						color='red';
					}
					else{
						console.log("아디일치")
						msg=' 회원가입 가능한 아이디 입니다. '
						$("[name=submit]").removeClass('non-active');
						color='blue';
					}
					$('#checkmsg').text(msg);
					$('#checkmsg').css('color',color);
				},
				error:function(){
					alert("아이디 중복 실패")	;
				}
				
			})
		}
	
	})
}
 
function pwCheck(){
	$('input[name=RgPwOk]').blur(function(){
	var pw= $('input[name=RgPw]').val();
	var pwOk =$('input[name=RgPwOk]').val();
	var color;
	var msg;
	if(pw!=pwOk){
		console.log("비번일치노노")
		msg='비밀번호가 일치하지않습니다';
		$("[name=submit]").addClass('non-active');
		color='red';
	}
	else{
		console.log("비번일치")
		msg='사용하 실 수 있는 비밀번호 입니다.';
		$("[name=submit]").removeClass('non-active');
		color='blue';	
	}
	$('#checkmsgpw').text(msg);
	$('#checkmsgpw').css('color',color);	
	})
}
</script>

</html>