<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style></style>
<script></script>
<link href="https://fonts.googleapis.com/css?family=Jua|Play"
	rel="stylesheet">
<!--폰트-->
<!--body { font-family: "Jua", sans-serif;} -->
<link href="${pageContext.request.contextPath }/CSS/restaurant.css" rel="stylesheet" type="text/css">
</head>
<!--헤더 인클루드-->
<jsp:include page="../include/header.jsp" />
<body>

	<div class="wrap_contents">
		<div class="hotplace">
			<div class="sub">
				<h3>인기 레스토랑</h3>
			</div>
			<div class="list_m">
				<!--4개까지..-->
				<ul class="list">
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="recplace">
			<div class="sub">
				<h3>추천 레스토랑</h3>
			</div>
			<div class="list_m">
				<!--4개까지..-->
				<ul class="list">
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="newplace">
			<div class="sub">
				<h3>신규 레스토랑</h3>
			</div>
			<div class="list_m">
				<!--4개까지..-->
				<ul class="list">
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
					<li class="list"><a href="">
							<div class="res_list">
								<ul class="res_list">
									<li><img src="${pageContext.request.contextPath }/images/cake.png" width="200" height="150"></li>
									<li id="kind">양식</li>
									<li id="name">레스토랑이름</li>
									<li id="loc">연남동</li>
								</ul>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>

</html>