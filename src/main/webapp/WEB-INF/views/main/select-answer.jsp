<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${ pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="en">

<head>
<style>
.correct-uncorrect-box {

	width: 100%;
	text-align: center;
	display: inline-block;
}

.question-content-wrapper {
	text-align: center;
	font-size: 20px;
	margin-top: 1%;
}

.complete-rate {
	text-align: right;
	margin-right: 10%;
	font-size: 20px;
}

.answer-selection-wrapper {
	display: inline-block;
}

.answer-selection-wrapper>input {
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.answer-selection-wrapper>button, #to-home{
	font-size: 18px;
	border-radius: 5px;
	border: 1px solid skyblue;
	background-color: rgba(0, 0, 0, 0);
	color: skyblue;
	padding: 5px;
}

.answer-selection-wrapper>button:hover, #to-home:hover{
	color: white;
	background-color: skyblue;
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


</head>
<body id="bg">
	<div class="page-wraper">
		<div id="loading-icon-bx"></div>
		<!-- Header Top ==== -->
		<jsp:include page="header.jsp"></jsp:include>
		</header>
		<!-- Header Top END ==== -->
		<!-- Inner Content Box ==== -->
		<div class="page-content">
			<!-- Page Heading Box ==== -->
			<div class="page-banner ovbl-dark"
				style="background-image:url(${contextPath }/resources/main_assets/assets/images/banner/banner3.jpg);">
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
						<li><a href="/">Home</a></li>
						<li>문제집 선택</li>
						<li><c:choose>
								<c:when test="${category == 1 }">정보처리기사</c:when>
								<c:when test="${category == 2 }">정보보안기사</c:when>
								<c:when test="${category == 3 }">리눅스 마스터</c:when>
								<c:when test="${category == 4 }">영단어 마스터</c:when>
								<c:when test="${category == 5 }">한국사 능력시험</c:when>
							</c:choose></li>
					</ul>
				</div>
			</div>
			<!-- Page Heading Box END ==== -->
			<div class="correct-uncorrect-box">
					정답 : <span id="correct">0</span>개
					오답 : <span id="incorrect">0</span>개
					문제 수 : ${ howmanyQuiz }문
			</div>
			<!-- Page Content Box ==== -->
			<div class="question-content-wrapper">
				<div class="question-wrapper">
					<div class="question">
					</div>
					<button id="to-home" onclick="window.open('index.do','_self')" style="display:none;">메인으로</button>
				</div>
				<div class="answer-selection-wrapper">
					<button name="selection1"></button>
					<button name="selection2"></button>
					<button name="selection3"></button>
					<button name="selection4"></button>
				</div>
				<div class="complete-rate-wrapper">
					<div class="complete-rate">
					<!-- 진행도 -->
					</div>
				</div>
			
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
	<script>
	var correct = 0;
	var incorrect = 0;
	var index = 0;
	var count = 0;
	var maxQuiz = ${howmanyQuiz};
	var quizList = new Array();
	var answerList = new Array();
	var quizCodeList = new Array();
	<c:forEach items="${allQuizList}" var="quiz">
		quizList.push("${quiz.quiz}");
		answerList.push("${quiz.answer}");
		quizCodeList.push("${quiz.quiz_code}");
	</c:forEach>
	$(document).ready(function(){
		setQuestion();
		setSelection();
		
	});
	function changeCorrects(correct, incorrect){
		$("#correct").text(correct);
		$("#incorrect").text(incorrect);
	}
	
	function setQuestion(){
		var question = quizList[index];
		$(".question").html('<p>'+question+'</p>');
	}
	
	function testEnd(){
		$(".question").html('<p>정답 : '+correct+'개\n오답 : '+incorrect+'개 입니다</p>');
		$("#to-home").css('display','');
		$("button[name^='selection']").css('display','none');
	}
	
	function setSelection(){
		console.log(index);
		if(index == maxQuiz){
			testEnd();	
			return;
		}else{
			var random1to4 =  Math.floor(Math.random() * 4);
			$.ajax({
				url:"selectWrongAnswer.do",
				data:{quizCode : quizCodeList[index]},
				type:"post",
				success:function(data){
					$("button[name^='selection']:eq("+random1to4+")").text(answerList[index]);
					setValueOfSelections(random1to4, data);	
					for(var i=0;i<4;i++){
						$("button[name^='selection']:eq("+i+")").off("click");
						$("button[name^='selection']:eq("+i+")").removeClass("correct");
						$("button[name^='selection']:eq("+i+")").removeClass("incorrect");
						$("button[name^='selection']:eq("+i+")").click({correctIndex:i,incorrectdatas : data}, function(event){
							var userAnswer = this.innerHTML;
							var realAnswer = answerList[index-1];
							console.log("유저앤서 : "+userAnswer);
							console.log("리얼앤서 : "+realAnswer);
							if(userAnswer == realAnswer){
								correct++;
								$(this).text("정답입니다");
								changeCorrects(correct,incorrect);
								$("#correct").css('background','#C9FFC3');
								setTimeout(() => {
									$("#correct").css('background','')
								}, 500);
							}else{
								incorrect++;
								$(this).text("오답입니다");
								changeCorrects(correct,incorrect);
								$("#incorrect").css('background','#FF8383');
								setTimeout(() => {
									$("#incorrect").css('background','');
								}, 500);
							}
							setQuestion();
							setSelection();	
						})
					}
					index++;
					
				},
				 error:function(request,status,error){
				       alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
				},
			})
		}
		
	}
	function setValueOfSelections(correctIndex, incorrectdatas){
		var incorrectIndex = 0;
		for(var i=0;i<4;i++){
			if(i==(correctIndex))continue;
			$("button[name^='selection']:eq("+i+")").text(incorrectdatas[incorrectIndex]);
			incorrectIndex++;
		}
	}
	</script>

</body>


</html>
