<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<%
  request.setCharacterEncoding("UTF-8");
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
<title>글추가창</title>

<script type="text/javascript">
	
	
		function writeCheck(){
			 var form = document.blogForm;
			 
			 if( !form.qaTitle.value )   // form 에 있는 name 값이 없을 때
			 {
			  alert( "제목을 작성해주세요" ); // 경고창 띄움
			  form.name.focus();   // form 에 있는 name 위치로 이동
			  return;
			 }
			 
			 if( !form.qaContent.value )
			 {
			  alert( "내용를 작성해주세요" );
			  form.password.focus();
			  return;
			 }
			 
			if( !form.qaHead.value )
			 {
			  alert( "질문유형을 선택해주세요" );
			  form.title.focus();
			  return;
			 }
			
			form.submit();
		}
	 function init(f){
		 var f_sel = f.question;
		 
		 f_sel.options[0] = new Option("선택");
		 	for(var i=0; i<f_selarr.length;i++){
		 		f_sel.options[i+1] = new Option(f_selarr[i],f_selarr[i]);
		 		new Option(text);
		 	}
	 }
	 
	  function backToList(obj){
	    obj.action="${contextPath}/listQaes.do";
	    obj.submit();
	  }
	  
	  
	   
	</script>
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
						<h1 class="text-white">QnA 작성</h1>
					</div>
				</div>
			</div>
			<!-- Breadcrumb row -->
			<div class="breadcrumb-row">
				<div class="container">
					<ul class="list-inline">
						<li><a href="#">Home</a></li>
						<li>QnA 작성</li>
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
								<div class="blog-post blog-md-30">
									<!-- blog start -->
									
									<form name="blogForm" method="post" action="${contextPath}/addQa.do">
										<!-- tiles안써서 다름 -->
										<div class="info-bx">
											<table border="0" align="center">
												<tr>
													<td align="right">QnA 유형</td>
													<td><span style="float: left; width: 500px;">
															<select id="question" name="qaHead" size="1">
																<option value="">게시글 유형을 선택하세요</option>
																<option value="[프로그램 오류]">[프로그램 오류]</option>
																<option value="[문제 오류]">[문제 오류]</option>
																<option value="[오답]">[오답]</option>
																<option value="[해설]">[해설]</option>
																<option value="[기타/문의]">[기타/문의]</option>
														</select>
													</span></td>
												<tr>
													<td align="right"><i class="fa fa-user"></i> 작성자</td>
													<td colspan="2" align="left"><input type="text"
														size="20" maxlength="100"  value="${member.name }" readonly /></td>
													<%-- <input type="hidden" name="id" value="${qa.id }"> --%>
												</tr> 
												<tr>
													<td align="right">글제목</td>
													<td colspan="2"><input type="text" size="100"
														maxlength="500" name="qaTitle" /></td>
												</tr>
												<tr>
													<td align="right" valign="top"><br>글내용</td>
													<td colspan=2><textarea name="qaContent" rows="10"
															cols="100" maxlength="4000"></textarea></td>
												</tr>
											</table>
											<div align="center" class="col-lg-12">
												<input type="button" value="글쓰기" class="btn button-md" OnClick="javascript:writeCheck();">
												<input type="button" value="목록보기" class="btn button-md"
													onClick="backToList(this.form)">
											</div>

										</div>
									</form>
								</div>
								<hr>
							</div>
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