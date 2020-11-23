<%@page import="com.spring.project.member.vo.MemberVO"%>
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
	<header class="header rs-nav header-transparent">
		<div class="top-bar">
			<div class="container">
				<div class="row d-flex justify-content-between">
				</div>
			</div>
		</div>
		<div class="sticky-header navbar-expand-lg">
            <div class="menu-bar clearfix">
                <div class="container clearfix">
					<!-- Header Logo ==== -->
					<div class="menu-logo">
						<a href="index.do"><img src="${contextPath }/resources/main_assets/assets/images/logo3.png" alt=""></a>
					</div>
					<!-- Mobile Nav Button ==== -->
                    <button class="navbar-toggler collapsed menuicon justify-content-end" type="button" data-toggle="collapse" data-target="#menuDropdown" aria-controls="menuDropdown" aria-expanded="false" aria-label="Toggle navigation">
						<span></span>
						<span></span>
						<span></span>
					</button>
					<!-- Author Nav ==== -->
                     <div class="secondary-menu">
                        <div class="secondary-inner">
                        	<%
                        		Cookie[] cookies = request.getCookies();
                        		if(cookies != null){
                        			for(Cookie cookie : cookies){
                        				if(cookie.getName().equals("loginCookie")){
                        					session.setAttribute("LgId", cookie.getValue());
                        				}
                        			}
                        		}
                        		String LgId = (String)session.getAttribute("LgId");
                        	%>
                        	<% if(LgId !=null) {
                        		%> 
                        		<ul>
									<li><a href="userpage.do"><%=LgId%></a>님 환영합니다</li>
									<li>
			                        	<a href="userpage.do">
			                           		<i class="fa fa-user"></i> 
			                        	</a>
			                        　				</li>
									<li><a href="logout.do">로그아웃　</a></li>
			                        <li>
			                        <div id="google_translate_element">
			                        </div>
			                     </li>
			                     </ul>
			                     <%
			                        } else {
			                     %>
			                     <ul>
			                        <li><a href="login.do">로그인</a>　</li>
			                        <li><a href="register.do">회원가입</a>　</li>
			                        <li>
			                        <div id="google_translate_element">
			                        </div>
			                     </li>
			                     </ul>
			                     <%
			                        }
			                     %>
			                </div>
                    </div>
					<!-- Search Box ==== -->
                    <div class="nav-search-bar">
                        <form action="#">
                            <input name="search" value="" type="text" class="form-control" placeholder="Type to search">
                            <span><i class="ti-search"></i></span>
                        </form>
						<span id="search-remove"><i class="ti-close"></i></span>
                    </div>
					<!-- Navigation Menu ==== -->
                    <div class="menu-links navbar-collapse collapse justify-content-start" id="menuDropdown">
						<div class="menu-logo">
							<a href="index.do"><img src="${contextPath }/resources/main_assets/assets/images/logo.png" alt=""></a>
						</div>
                        <ul class="nav navbar-nav">	
							<li class="active"><a href="javascript:;">Home<i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
									<li><a href="index.do">Home 1</a></li>
								</ul>
							</li>
							<li><a href="javascript:;">공부방<i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
									<li><a href="javascript:;">학습하기<i class="fa fa-angle-right"></i></a>
										<ul class="sub-menu">
											<li><a href="study.do">문제풀기</a></li>
										</ul>
									</li>
									<li><a href="javascript:;">문제풀기<i class="fa fa-angle-right"></i></a>
										<ul class="sub-menu">
											<li><a href="exercise.do">주관식</a></li>
											<li><a href="exercise.do">객관식</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="add-mega-menu"><a href="javascript:;">나의 단어장<i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu add-menu">
									<li class="add-menu-left">
										<h5 class="menu-adv-title">나의 단어장</h5>
										<ul>
											<li><a href="engineer.do?category=1">정보처리기사 </a></li>
											<li><a href="security.do?category=2">정보보안기사</a></li>
											<li><a href="linux.do?category=3">리눅스 마스터</a></li>
											<li><a href="english.do?category=4">영단어 마스터</a></li>
											<li><a href="korean-history.do?category=5">한국사 능력시험</a></li>
										</ul>
									</li>
									<li class="add-menu-right">
										<img src="${contextPath }/resources/main_assets/assets/images/adv/adv.jpg" alt=""/>
									</li>
								</ul>
							</li>
							<li><a href="javascript:;">게시판 <i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
									<li><a href="listQaes.do">자유 게시판</a></li>
								</ul>
							</li>
							<!-- 관리자 대시보드 -->
							<li class="nav-dashboard"><a href="javascript:;">관리자 홈 <i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
									<li><a onclick="authorize_admin()">관리자 패널</a></li>
								</ul>
							</li>
						</ul>
						<div class="nav-social-link">
							<a href="javascript:;"><i class="fa fa-facebook"></i></a>
							<a href="javascript:;"><i class="fa fa-google-plus"></i></a>
							<a href="javascript:;"><i class="fa fa-linkedin"></i></a>
						</div>
                    </div>
					<!-- Navigation Menu END ==== -->
                </div>
            </div>
        </div>
        
        
        <!-- 자동번역기능 -->
	        <script type="text/javascript">
				function googleTranslateElementInit() {
					new google.translate.TranslateElement({
							pageLanguage : 'ko',
							includedLanguages : 'ko,de,en,es,fr,ja,vi',
							layout : google.translate.TranslateElement.InlineLayout.SIMPLE
					}, 'google_translate_element');
				}
				function authorize_admin() {
					if (sessionStorage.getItem("admin") == null) {
						var admin_id = prompt("관리자 로그인 아이디");
						var admin_pw = prompt("관리자 로그인 비밀번호");
						$.ajax({
							url : 'authorize.do',
							type : 'post',
							data : {
								adminID : admin_id,
								adminPW : admin_pw,
							},
							success : function(data) {
								if (data == 1) {
									location.href = "admin/index.do";
									sessionStorage.setItem("admin", "관리자권한");
								} else {
									alert("로그인 실패");
								}
							},
							error : function() {
								alert("ajax 접속 오류");
							}
						})
					} else {
						location.href = "admin/index.do";
					}
				}
			</script>
			
			<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
		<style>
			#google_translate_element{
				margin-right: 3%;
			}
			.goog-te-banner-frame.skiptranslate {
			       display: none !important;
			} body { top: 0px !important; }
			.goog-tooltip {
			       display: none !important;
			}
			.goog-tooltip:hover {
			       display: none !important;
			}
			.goog-text-highlight {
			       background-color: transparent !important;
			       border: none !important; 
			       box-shadow: none !important;
			}
		</style>
    </header>
</body>
</html>