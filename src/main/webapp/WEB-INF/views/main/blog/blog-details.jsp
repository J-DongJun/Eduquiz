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

<script>
		

	 function backToList(obj){
		    obj.action="${contextPath}/listQaes.do?page=1";
		    obj.submit();
	     }
	 
		function fn_enable(obj){
			 document.getElementById("i_title").disabled=false;
			 document.getElementById("i_content").disabled=false;
			 document.getElementById("tr_btn_modify").style.display="block";
			 document.getElementById("tr_btn").style.display="none";
		 }
		
		 function fn_modify_qa(obj){
			 obj.action="${contextPath}/modQa.do";
			 obj.submit();
		 }
		 
		 function fn_remove_qa(url,qaNUM){
			 var form = document.createElement("form");
			 form.setAttribute("method", "post");
			 form.setAttribute("action", url);
		     var articleNOInput = document.createElement("input");
		     articleNOInput.setAttribute("type","hidden");
		     articleNOInput.setAttribute("name","qaNUM");
		     articleNOInput.setAttribute("value", qaNUM);
			 
		     form.appendChild(articleNOInput);
		     document.body.appendChild(form);
		     form.submit();
		 
		 }
		 
		 function fn_blogForm(isLogOn,blogForm,loginForm,qaNUM){
				if(isLogOn != '' && isLogOn != 'false'){
					var form = document.createElement("form");
					 form.setAttribute("method", "get");
					 form.setAttribute("action", blogForm);
					 var articleNOInput = document.createElement("input");
				     articleNOInput.setAttribute("type","hidden");
				     articleNOInput.setAttribute("name","qaNUM");
				     articleNOInput.setAttribute("value", qaNUM);
					 
				     form.appendChild(articleNOInput);
				     document.body.appendChild(form);
				     form.submit();
				}else{
					alert("로그인 후 글쓰기가 가능합니다.")
					location.href="login.do";
				}
			}
		 
		 function fn_reply_form(url, qaNUM){
			 var form = document.createElement("form");
			 form.setAttribute("method", "get");
			 form.setAttribute("action", url);
			 var articleNOInput = document.createElement("input");
		     articleNOInput.setAttribute("type","hidden");
		     articleNOInput.setAttribute("name","qaNUM");
		     articleNOInput.setAttribute("value", qaNUM);
			 
		     form.appendChild(articleNOInput);
		     document.body.appendChild(form);
		     form.submit();
		 }
		
		 
	</script>
<style>
#tr_btn_modify {
	display: none;
}
</style>
</head>
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
						<h1 class="text-white">QnA 게시판</h1>
					</div>
				</div>
			</div>
			<!-- Breadcrumb row -->
			<div class="breadcrumb-row">
				<div class="container">
					<ul class="list-inline">
						<li><a href="#">Home</a></li>
						<li>QnA 게시판</li>
					</ul>
				</div>
			</div>
			<!-- Breadcrumb row END -->
			<div class="content-block">
				<div class="section-area section-sp1">
					<div class="container">
						<div class="row">
							<!-- Left part start -->
							<div class="col-lg-12 col-xl-12">
								<!-- blog start -->


								<form name="frmQa" method="post"
									action="${contextPath}/viewQa.do">

									<div class="info-bx">
										<ul class="media-post">
											<li><i class="fa fa-calendar"></i>&nbsp ${qa.qaDate }</li>
											<li><i class="fa fa-pencil"></i>&nbsp글번호 ${qa.qaNUM }</li>
											<input type="hidden" name="qaNUM" value="${qa.qaNUM}" />
											<li><i class="fa fa-user"></i>&nbsp글쓴이 ${qa.id }</li>
										</ul>

										<h4>${qa.qaHead }</h4>
										<hr>
										<h3 class="post-title" id="i_title" disabled>${qa.qaTitle }</h3>
										<input type="hidden" name="qaTitle" value="${qa.qaTitle }" />
										<hr>
										<textarea rows="10" cols="120" name="qaContent" id="i_content"
											disabled />${qa.qaContent }</textarea>

										<hr>
										<div id="tr_btn_modify" align="center" class="col-lg-12">
											<input type=button value="수정반영하기"
												onClick="fn_modify_qa(frmQa)" class="btn button-md">
											<input type=button value="취소" onClick="backToList(frmQa)"
												class="btn button-md">
										</div>
										<p>
										<div id="tr_btn" align="center">
											<c:if test="${member.id == qa.id }">
												<input type=button value="수정하기"
													onClick="fn_enable(this.form)" class="btn button-md">
												<input type=button value="삭제하기"
													onClick="fn_remove_qa('${contextPath}/removeQa.do', ${qa.qaNUM})"
													class="btn button-md">
											</c:if>
											<input type=button value="리스트로 돌아가기"
												onClick="backToList(this.form)" class="btn button-md">
											<%-- <input type=button value="답글쓰기"
												onClick="fn_reply_form('${contextPath}/openReply.do', ${qa.qaNUM})"
												class="btn button-md"> --%>
												<input type=button value="답글쓰기"
													onClick="javascript:fn_blogForm('${isLogOn }','${contextPath }/openReply.do','${contextPath}/member/login.do',${qa.qaNUM})"
													class="btn button-md">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Content END-->
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