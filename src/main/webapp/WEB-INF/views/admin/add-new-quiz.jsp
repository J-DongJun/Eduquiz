<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>

<!-- Mirrored from educhamp.themetrades.com/demo/admin/add-listing.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:09:05 GMT -->
<head>
<style>
.dropdown-toggle{
color:black !important;
}
</style>

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
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">Add listing</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>새 문제 추가</li>
				</ul>
			</div>
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>새 문제 추가</h4>
						</div>
						<div class="widget-inner">
							<form class="edit-profile m-b30" method="post" action="addNewQuizProc.do">
								<div class="row">
									<div class="col-12">
										<div class="ml-auto">
											<h3>1. 기본 정보</h3>
										</div>
									</div>
									<div class="form-group col-6">
										<label class="col-form-label">카테고리 종류</label>
										<div>
											<select class="form-control" name="category">
											<option selected disabled style="display:none">카테고리 선택</option>
											<c:forEach items="${ comboBoxList }" var="item" varStatus="status">
												<option value="${ status.index+1 }">${ item }</option>
											</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group col-6">
									</div>
									<div class="form-group col-8">
										<label class="col-form-label">문제</label>
										<div>
											<input name="quiz" class="form-control" type="text" value="" placeholder="문제를 입력하세요">
										</div>
									</div>
									<div class="seperator"></div>
									
									<div class="col-12 m-t20">
										<div class="ml-auto m-b5">
											<h3>2. 해설과 답</h3>
										</div>
									</div>
									<div class="form-group col-12">
										<label class="col-form-label">정답</label>
										<div>
											<textarea class="form-control" name="answer"> </textarea>
										</div>
									</div>

									<div class="col-12">
										<button type="submit" class="btn-secondry add-item m-r5"><i class="fa fa-fw fa-plus-circle"></i>문제 추가</button>
										<button type="reset" class="btn">초기화</button>
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
<script>
// Pricing add
	function newMenuItem() {
		var newElem = $('tr.list-item').first().clone();
		newElem.find('input').val('');
		newElem.appendTo('table#item-add');
	}
	if ($("table#item-add").is('*')) {
		$('.add-item').on('click', function (e) {
			e.preventDefault();
			newMenuItem();
		});
		$(document).on("click", "#item-add .delete", function (e) {
			e.preventDefault();
			$(this).parent().parent().parent().parent().remove();
		});
	}
</script>
</body>

<!-- Mirrored from educhamp.themetrades.com/demo/admin/add-listing.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:09:05 GMT -->
</html>