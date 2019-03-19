<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<title>MAIN</title>

<link href="../CSS/AccomodationDetail.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="../JS/AccomodationDetail.js"></script>
</head>

<body>
	<div id="roomMain">
		<div class="mainRoomHeader">
			<img src="../images\rooms.jpg" width="100%" height="327px">

		</div>
		<div id="roomPage">1/20</div>



		<div id="mainContent">
			<div class="roomInfo">
				<h2>${aDto.accomodationName}
					${aDto.accmodationKind}(${aDto.accmodationArea})<a href="#"
						onclick="roomRegister(${aDto.accomodationNum})">객실등록하기</a>
				</h2>
				<h4>${aDto.accomodationAdd}</h4>
				<h4>숙소 전화번호: ${aDto.accmodationTell}</h4>
				<p>이용가능한 객실수:5실</p>
				<h4>
					<span>당일예약취소가능</span><span>현장적립</span><span>최저가보상</span>
				</h4>
				</li>
				<p>
					<img src="../images\v.PNG">미리예약시 1% 적립
				</li>
				</p>
				<p>
					<img src="../images\v.PNG">당일예약 건 입실 3시간 전까지 100% 환불가능
				</li>
				</p>
				<p>
					<img src="../images\v.PNG">정보제공
				</li>
				</p>

			</div>


			<div class="chekinChekout">
				<div id="chekin">체크인<input type="date">
				</div>
				<div id="chekout">체크아웃<input type="date">
				</div>

			</div>
			 <c:forEach items="${list}" var="list">
			<div class="room">
				<div class="roomImg">
					<img src="../images\rooms.jpg" alt="">
				</div>
			
				<div class="roomInfos">
					
					<h2>${list.roomKind}</h2>
					<h4>기준2명/최대 ${list.roomCount}명</h4>
					<h4>입실:${list.roomAd} 퇴실 :${list.roomEx}</h4>
					<h1>${list.roomPrice}원</h1>
				</div>
				</div>
				</c:forEach>
			</div>

		</div>

	</div>
	</div>
</body>

</html>