<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String kind=(String)request.getAttribute("kind"); %>

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
<link href="${pageContext.request.contextPath }/CSS/restaurant_list.css"
	rel="stylesheet" type="text/css">
 <script>
        function area(val) {
            var val = val;
            $.ajax({
                type: "POST",
                url: "RestaurantKind",
                data: "area=" + val + "&kind=<%=kind%>",
                datatype: "html",
                success: function (data) {
                    $("#ajax").html(data);
                }
            });
        }

        function newRestaurant() {
            var val = val;
            $.ajax({
                type: "POST",
                url: "AccomodationPrice",
                data: "kind=호텔",
                datatype: "html",
                success: function (data) {
                    $("#ajax").html(data);
                }
            });
        }

    </script>

</head>
<jsp:include page="../include/header.jsp" />
<body>
	<div id="main">


		<div id="detailMention">
			데이코레이션
			<%=kind %>
			리스트
		</div>
		<div id="optionList">
			<div class="option">
				<select style="height: 25px; width: 150px;" onchange="area(this.value)" id="selects">

					<option>서울</option>
					<option>경기</option>
					<option>인천</option>
					<option>강원</option>
					<option>제주</option>
					<option>대전</option>
					<option>세종</option>
					<option>충북</option>
					<option>충남</option>
					<option>부산</option>
					<option>울산</option>
					<option>경남</option>
					<option>대구</option>
					<option>경북</option>
					<option>광주</option>
					<option>전남</option>
					<option>전북</option>

				</select>

			</div>
			<div class="option" onclick="newRestaurant()">최신등록순</div>
			<div class="option">후기순</div>
		</div>

		<div id="detailList">
			<div id="ajax">
				<c:forEach items="${list}" var="list">
					<div class="accomodationList">
						<img src="Restaurant/upfile/${list.restaurantImage }" />
						<div class="detailContent">
							<h3>
								<a href="RestaurantDetail?num=${list.restaurantNum }">릴호-대구</a>
							</h3>
							<p>주소:${list.restaurantAdd }</p>
							<p>번호: ${list.restaurantTell }</p>
							<p>종류: ${list.restaurantKind }</p>
							<b>${list.restaurantInfo }</b>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>


</body>
</html>