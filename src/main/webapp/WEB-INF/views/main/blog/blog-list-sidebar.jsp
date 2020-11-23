<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("utf-8");
%>
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
<meta property="og:description"
	content="EduChamp : Education HTML Template" />
<meta property="og:image" content="" />
<meta name="format-detection" content="telephone=no">

<!-- FAVICONS ICON ============================================= -->
<link rel="icon"
	href="${contextPath }/resources/main_assets/assets/images/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon" type="image/x-icon"
	href="${contextPath }/resources/main_assets/assets/images/favicon.png" />

<!-- PAGE TITLE HERE ============================================= -->
<title>EduChamp : Education HTML Template</title>

<!-- MOBILE SPECIFIC ============================================= -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->

<!-- All PLUGINS CSS ============================================= -->
<link rel="stylesheet" type="text/css"
	href="${contextPath }/resources/main_assets/assets/css/assets.css">

<!-- TYPOGRAPHY ============================================= -->
<link rel="stylesheet" type="text/css"
	href="${contextPath }/resources/main_assets/assets/css/typography.css">

<!-- SHORTCODES ============================================= -->
<link rel="stylesheet" type="text/css"
	href="${contextPath }/resources/main_assets/assets/css/shortcodes/shortcodes.css">

<!-- STYLESHEETS ============================================= -->
<link rel="stylesheet" type="text/css"
	href="${contextPath }/resources/main_assets/assets/css/style.css">
<link class="skin" rel="stylesheet" type="text/css"
	href="${contextPath }/resources/main_assets/assets/css/color/color-1.css">
<title>게시판 목록창</title>
<style type="text/css">
li {
	list-style: none;
	float: left;
	padding: 6px;
}
</style>
</head>
<script>

	function fn_blogForm(isLogOn,blogForm,loginForm){
		if(isLogOn != '' && isLogOn != 'false'){
			location.href=blogForm;
		}else{
			alert("로그인 후 글쓰기가 가능합니다.")
			location.href="login.do";
		}
	}
</script>
<body id="bg">
	<div class="page-wraper">
		<div id="loading-icon-bx"></div>

		<!-- Header Top ==== -->
		<jsp:include page="../header.jsp"></jsp:include>
		<!-- header END ==== -->
		<!-- Content -->
		<div class="page-content bg-white">
			<!-- inner page banner -->
			<div class="page-banner ovbl-dark"
				style="background-image:url(${contextPath }/resources/main_assets/assets/images/banner/banner2.jpg);">
				<div class="container">
					<div class="page-banner-entry">
						<h1 class="text-white">QnA</h1>
					</div>
				</div>
			</div>
			<!-- Breadcrumb row -->
			<div class="breadcrumb-row">
				<div class="container">
					<ul class="list-inline">
						<li><a href="#">Home</a></li>
						<li>QnA</li>
					</ul>
					&nbsp
				</div>
			</div>
			<!-- Breadcrumb row END -->
			<!-- contact area -->
			<div class="content-block">
				<div class="section-area section-sp1">
					<div class="container">
						<div class="row">
							<!-- Left part start -->
							<div class="col-lg-12 col-xl-12">
								<div class="blog-post blog-md-30">
									<table align="center" width="100%">
										<c:set var="total" value="${pageMaker.listTotal }" />

										<tr class="media-post" height="150%" align="center">
											<td width="10%"><i class="fa fa-pencil"></i>&nbsp NO</td>
											<td width="15%"><i class="fa fa-bolt"></i>&nbsp HEAD</td>
											<td width="15%"><i class="fa fa-user"></i>&nbsp POSTED
												BY</td>
											<td width="50%"><i class="fa fa-quora"></i>&nbsp TITLE</td>
											<td width="10%"><i class="fa fa-calendar"></i>&nbsp DATE</td>
										</tr>
										<c:choose>
											<c:when test="${QaesList ==null }">
												<tr height="10">
													<td colspan="4">
														<p align="center">
															<b><span style="font-size: 12pt;">등록된 글이 없습니다.</span></b>
														</p>
													</td>
												</tr>
											</c:when>
											<c:when test="${QaesList !=null }">
												<c:set var="total" value='${(total)-((page-1)*10)}'></c:set>
												<c:forEach var="qa" items="${QaesList }" varStatus="qaNum">
													<tr align="center">
														<td>${ total } <%-- -((${page-1})*10)+${ qaNum.index } --%>
															<%-- ${total } --%>

														</td>
														<!--  <td >${qaNum.count}</td>-->
														<td>${qa.qaHead }</td>
														<td>${qa.id }</td>
														<td align='left'>
															<!--   <span style="padding-right:10px"></span> --> <c:choose>
																<c:when test='${qa.level > 1 }'>
																	<c:forEach begin="1" end="${qa.level }" step="1">
																		<span style="padding-left: 13px"></span>
																	</c:forEach>
																	<span style="font-size: 20px;">└ RE )) </span>
																	<a class='cls1'
																		href="${contextPath}/viewQa.do?qaNUM=${qa.qaNUM}">${qa.qaTitle}</a>
																</c:when>
																<c:otherwise>
																	<a class='cls1'
																		href="${contextPath}/viewQa.do?qaNUM=${qa.qaNUM}">${qa.qaTitle}</a>
																</c:otherwise>
															</c:choose>
														</td>
														<td>${qa.qaDate}</td>
													</tr>
													<c:set var="total" value="${total-1 }" />
												</c:forEach>
											</c:when>
										</c:choose>
									</table>
									<div class="pagination-bx rounded-sm gray" align="center">
										<ul class="pagination justify-content-center">
											<c:if test="${pageMaker.prev}">
												<li class="previous"><a
													href="listQaes.do${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
											</c:if>

											<c:forEach begin="${pageMaker.startPage}"
												end="${pageMaker.endPage}" var="idx">
												<c:choose>
													<c:when test="${page == idx}">
														<li class="active"><a
															href="listQaes.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
													</c:when>
													<c:otherwise>
														<li><a href="listQaes.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>

											<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
												<li class="next"><a
													href="listQaes.do${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
											</c:if>
										</ul>
									</div>
									<div class="pt-btn-write">
										<a href="javascript:fn_blogForm('${isLogOn }','${contextPath }/insertQa.do','${contextPath}/member/login.do')" class="btn">WRITE</a>
										<!-- <a href="insertQa.do" class="btn">WRITE</a> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- Footer ==== -->
		<jsp:include page="../footer.jsp"></jsp:include>
		<!-- Footer END ==== -->
		<!-- scroll top button -->
		<button class="back-to-top fa fa-chevron-up"></button>
	</div>
	<!-- External JavaScripts -->
	<script
		src="${contextPath }/resources/main_assets/assets/js/jquery.min.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/bootstrap/js/popper.min.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/magnific-popup/magnific-popup.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/counter/waypoints-min.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/counter/counterup.min.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/imagesloaded/imagesloaded.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/masonry/masonry.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/masonry/filter.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/owl-carousel/owl.carousel.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/js/functions.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/js/contact.js"></script>
	<script
		src="${contextPath }/resources/main_assets/assets/vendors/switcher/switcher.js"></script>
</body>

</html>