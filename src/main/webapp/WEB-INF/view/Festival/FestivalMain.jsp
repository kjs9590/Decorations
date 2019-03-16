<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 자기가 쓸거 알아서 주석풀고 사용하기 [순서대로 form설정, spring기능 사용, c태그 사용] -->
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!--제목 설정-->
<title>샘플(변경하세요)</title>

<!-- 기본 설정  => 여기서부터 -->
<meta name="viewport" content="width = device-width, initial-scale = 1.0, maximum-scale = 1.0 minimum-scale = 1.0">
<!-- font 설정 -->
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon"
	rel="stylesheet">
<!-- css 적용 : font-family: 'Do Hyeon', sans-serif; -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR"
	rel="stylesheet">
<!-- css 적용 : font-family: 'Noto Sans KR', sans-serif; -->

<!--Jquery, JqueryUI설정-->
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
	integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
	crossorigin="anonymous"></script>

<!--css 설정(기본값)-->
<link href="/css/body.css" rel="stylesheet" type="text/css">
<link href="/css/header.css" rel="stylesheet" type="text/css">
<link href="/css/footer.css" rel="stylesheet" type="text/css">

<!-- js 설정(기본값) -->
<script src = "../js/header.js"></script>

<!-- 여기까지 노터치(변경하거나 추가하지 마시오) -->

<!-- contents css설정(직접 만든 css를 여기에 올려주세요) 주석 치우고 css/이름만 바꾸면 됨.css -->
<!-- <link href="css/sample.css" rel="stylesheet" type="text/css"> -->
<!-- contents js설정(직접 만든 js를 여기에 올려주세요)  주석 치우고 js/이름만 바꾸면 됨.js  -->
<!-- <script src = "js/sample.js"></script> -->


</head>
<body>
<!-- Header 시작 -->
<%-- <jsp:include page="Header.jsp" /> --%>
<!-- Header 끝 -->
<!-- Content 시작(내용 첨가) -->
<div id = "contents">
<form method="get">
<div id="festival_main_view"><img src="img/Festival_main.png"></div>
		<div id="festival_title"><h3>지역축제</h3></div>
		<div id="area_info">
			<ul>
				<li>제주도</li>
				<li>부산</li>
				<li>평양</li>
				<li>경기도</li>
				<li>서울</li>
			</ul>

		</div>
		<div class="festival_infobox">
			<div id="festival_infoview"><img src="img/festival1.jpg"></div>
			<div id="festival_info">
					<p id="info"><strong>한림공원 매화축제 2019</strong></span>
				<p>새 봄! 봄의 전령사 매화를 만나보자. </p>
				<p>
					기간: 2019. 3. 7. ~ 10.<br>
					장소: 제주도 제주시<br>
					문의: 한림공원 064-796-0001~4
				</p>
				</p>
			</div>
		</div>
		<div class="festival_infobox">
				<div id="festival_infoview"><img src="img/festival2.jpg"></div>
				<div id="festival_info">
				<p id="info"><strong>한림공원 매화축제 2019</strong>
					<p>새 봄! 봄의 전령사 매화를 만나보자. </p>
					<p>
						기간: 2019. 3. 7. ~ 10.<br>
						장소: 제주도 제주시<br>
						문의: 한림공원 064-796-0001~4
					</p>
				</p>	
				</div>
			</div>
			<div class="festival_infobox">
					<div id="festival_infoview"><img src="img/festival3.jpg"></div>
					<div id="festival_info">
					<p id="info"><strong>한림공원 매화축제 2019</strong>
						<p>새 봄! 봄의 전령사 매화를 만나보자. </p>
						<p>
							기간: 2019. 3. 7. ~ 10.<br>
							장소: 제주도 제주시<br>
							문의: 한림공원 064-796-0001~4
						</p>
					</p>
					</div>
				</div>
				<div class="festival_infobox">
						<div id="festival_infoview"><img src="img/festival4.jpg"></div>
						<div id="festival_info">
						<p id="info"><strong>한림공원 매화축제 2019</strong>
							<p>새 봄! 봄의 전령사 매화를 만나보자. </p>
							<p>
								기간: 2019. 3. 7. ~ 10.<br>
								장소: 제주도 제주시<br>
								문의: 한림공원 064-796-0001~4
							</p>
						</p>
						</div>
					</div>
					<div class="festival_infobox">
							<div id="festival_infoview"><img src="img/movie2.JPG"></div>
							<div id="festival_info">
							<p id="info"><strong>한림공원 매화축제 2019</strong>
								<p>새 봄! 봄의 전령사 매화를 만나보자. </p>
								<p>
									기간: 2019. 3. 7. ~ 10.<br>
									장소: 제주도 제주시<br>
									문의: 한림공원 064-796-0001~4
								</p>
							</p>
							</div>
						</div>
		<div id="paging_box">
			<a href="#">1</a>
			<a href="#">2</a>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a href="#">6</a>
			<a href="#">7</a>
			<a href="#">8</a>
			<a href="#">9</a>
			<a href="#">10</a>
		</div>
		</form>
</div>
<!-- Content 끝 -->
<!-- Footer 시작 -->
<%-- <jsp:include page="Footer.jsp" /> --%>
<!-- Footer 끝 -->
</body>
</html>