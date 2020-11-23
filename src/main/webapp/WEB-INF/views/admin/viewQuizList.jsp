<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>

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
<meta property="og:description"
	content="EduChamp : Education HTML Template" />
<meta property="og:image" content="" />
<meta name="format-detection" content="telephone=no">

<!-- FAVICONS ICON ============================================= -->
<link rel="icon" href="../main/error-404.jsp" type="image/x-icon" />
<link rel="shortcut icon" type="image/x-icon"
	href="${contextPath }/resources/admin/assets/images/favicon.png" />

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
	href="${contextPath }/resources/admin/assets/css/assets.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath }/resources/admin/assets/vendors/calendar/fullcalendar.css">

<!-- TYPOGRAPHY ============================================= -->
<link rel="stylesheet" type="text/css"
	href="${contextPath }/resources/admin/assets/css/typography.css">

<!-- SHORTCODES ============================================= -->
<link rel="stylesheet" type="text/css"
	href="${contextPath }/resources/admin/assets/css/shortcodes/shortcodes.css">

<!-- STYLESHEETS ============================================= -->
<link rel="stylesheet" type="text/css"
	href="${contextPath }/resources/admin/assets/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath }/resources/admin/assets/css/dashboard.css">
<link class="skin" rel="stylesheet" type="text/css"
	href="${contextPath }/resources/admin/assets/css/color/color-1.css">

</head>
<style>
#addNewQuiz{
	width: 10%;
    height: 10%;
    position: fixed;
    font-size: 1rem;
    left: 85%;
    top: 80%;
    border-radius: 5px;
    border: outset;
}

#addNewQuiz:hover{
	border:inset;
}

</style>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">

	<!-- header start -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- header end -->
	<!-- Left sidebar menu start -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- Left sidebar menu end -->

	<!--Main container start -->
	
	<main class="ttr-wrapper">
	<button id="addNewQuiz" onclick="location.href='addNewQuiz.do'">새 문제 추가</button>
		<!-- user list -->
		<div class="voca_place">
			<div class="voca_table"></div>
			<!--voca_table END  -->
		</div>
		<!-- user list end -->
	</main>
	<div class="ttr-overlay"></div>

	<!-- External JavaScripts -->
	<script src="${contextPath }/resources/admin/assets/js/jquery.min.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/bootstrap/js/popper.min.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/magnific-popup/magnific-popup.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/counter/waypoints-min.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/counter/counterup.min.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/imagesloaded/imagesloaded.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/masonry/masonry.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/masonry/filter.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/owl-carousel/owl.carousel.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/scroll/scrollbar.min.js"></script>
	<script src="${contextPath }/resources/admin/assets/js/functions.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/chart/chart.min.js"></script>
	<script src="${contextPath }/resources/admin/assets/js/admin.js"></script>
	<script
		src="${contextPath }/resources/admin/assets/vendors/switcher/switcher.js"></script>
	<script src="https://kit.fontawesome.com/c217175639.js"
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from educhamp.themetrades.com/demo/admin/courses.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:11:35 GMT -->

<script type="text/javascript">
    var isEnd = false;
    
    $(function(){
        $(window).scroll(function(){
            var $window = $(this);
            var scrollTop = $window.scrollTop();
            var windowHeight = $window.height();
            var documentHeight = $(document).height();
            
            console.log("documentHeight:" + documentHeight + " | scrollTop:" + scrollTop + " | windowHeight: " + windowHeight );
            
            // scrollbar의 thumb가 바닥 전 30px까지 도달 하면 리스트를 가져온다.
            if( scrollTop + windowHeight + 30 > documentHeight ){
                fetchList();
                return;
            }
        })
        fetchList();
    })
    
    var fetchList = function(){
        if(isEnd == true){
            return;
        }
        
        // 방명록 리스트를 가져올 때 시작 번호
        // renderList 함수에서 html 코드를 보면 <li> 태그에 data-no 속성이 있는 것을 알 수 있다.
        // ajax에서는 data- 속성의 값을 가져오기 위해 data() 함수를 제공.
        //var startNo = $("#list-guestbook li").last().data("no") || 0;
        //var startNo = $(".voca_table .voca_table2").last().data("no")||0;
        var startNo = $(".voca_table2").length;
        $.ajax({
            url:"getadditionalQuiz.do?startNo=" + startNo ,
            type: "GET",
            success: function(data){
            	
                // 컨트롤러에서 가져온 방명록 리스트는 result.data에 담겨오도록 했다.
                // 남은 데이터가 5개 이하일 경우 무한 스크롤 종료
                var length = data.length;
                
                //sql 문에서 10~20번째, 그 이상의 항목만 조회할 수 있는 방법을 찾아라
                if( length < 10 ){
                    isEnd = true;
                }
                $.each(data, function(index, vo){
                    renderList(false, vo);
                })
            },
            error:function(request, error){
            	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }
    
    var renderList = function(mode, vo){
        // 리스트 html을 정의
        
        var html = "<div class='voca_table2 a_list'>" +
            "<div class='voca_answer'>"+ vo.answer +"</div>" +
            "<div class='line1'></div>"+
            "<div class='voca_quiz'>"+ vo.quiz +"</div>" +
            "<div class='line2'></div>" +
            "<div class='voca_delete'>"+
            "<a href='/project/admin/removeQuiz.do?code="+vo.quiz_code+"' onclick='return confirm("+"'삭제하시겠습니까?'"+");'>"+
            "<i class='far fa-trash-alt' style='font-size:2rem;'></i></a>" +
            "</div></div>";
        
        if( mode ){
            $(".voca_table").prepend(html);
        }
        else{
            $(".voca_table").append(html);
        }
    }
</script>

</html>