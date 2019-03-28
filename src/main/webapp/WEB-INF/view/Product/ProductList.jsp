<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style></style>

<link href="https://fonts.googleapis.com/css?family=Jua|Play"
	rel="stylesheet">
<!--폰트-->
<!--body { font-family: "Jua", sans-serif;} -->
<script type="text/javascript" src="../JS/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../JS/jquery.form.js"></script>
<link href="${pageContext.request.contextPath }/CSS/product.css" rel="stylesheet" type="text/css">
<script></script>

</head>

<body>

	<div class="wrap_product">
		<p id="p">상품 관리</p>

		<div class="option" onclick="all()">전체</div>
		<div class="option" onclick="theater()">영화관</div>
		<div class="option" onclick="accomodation()">숙소</div>
		<div class="option" onclick="restaurant()">레스토랑</div>
		<table id="table">
			<tr>
				<td colspan="4" id="sub">전체</td>
			</tr>

			<tr>
				<td id="sub">이름</td>
				<td id="sub">정보</td>
				<td id="sub">주소</td>
				<td id="sub">연락처</td>
			</tr>
			<tr>
				<td id="con">ㅁㅁㅁ</td>
				<td id="con">ㅁㅁㅁ</td>
				<td id="con">ㅁㅁㅁ-ㅁㅁㅁ-ㅁㅁㅁ-ㅁㅁㅁ</td>
				<td id="con">000-0000-0000</td>
			</tr>
		</table>
	</div>
</body>
</html>
