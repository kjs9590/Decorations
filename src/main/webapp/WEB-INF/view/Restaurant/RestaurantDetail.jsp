<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="Model.*, java.util.*"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<% 
	ChargerDTO chargerDTO =(ChargerDTO)session.getAttribute("chargerDTO");
	List <RestaurantDTO> list=(List)request.getAttribute("list");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style></style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath }/JS/datepicker.js"></script>
<script src="${pageContext.request.contextPath }/JS/datepicker.min.js"></script>
<script>
        window.onload = function () {
            var sel = document.getElementById("select");
            //document.getElementById("sel").onclick = function(event){
            document.getElementById("select").onclick = function (event) {
                document.getElementById("pp").innerText = sel.value;
            }
            var tsel = document.getElementById("time");
            //document.getElementById("sel").onclick = function(event){
            document.getElementById("time").onclick = function (event) {
                document.getElementById("tm").innerText = tsel.value;
            }
        }
        $(function () {

            $('.date').datepicker({
                language: {
                    days: ["일", "월", "화", "수", "목", "금", "토"],
                    daysShort: ["1", "2", "3", "4", "5", "6", "7"],
                    daysMin: ["일", "월", "화", "수", "목", "금", "토"],
                    months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                    monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                    today: "오늘",
                    clear: "1주일",
                    dateFormat: "yyyy.mm.dd",
                    timeFormat: "hh:ii",
                    firstDay: 1
                },
                navTitles: {
                    days: " <i class='date-pic-year'>yyyy</i>MM"
                },
                autoClose: true,
                onSelect: function onSelect(fd) {
                    $('.chk_date').text(fd);
                }

            });
        });
        $(document).ready(function () {
            // .check 클래스 중 어떤 원소가 체크되었을 때 발생하는 이벤트
            $(".check").click(function () {  // 여기서 .click은 체크박스의 체크를 뜻한다.
                var str = "";  // 여러개가 눌렸을 때 전부 출력이 될 수 있게 하나의 객체에 담는다.
                $(".check").each(function () {  // .each()는 forEach를 뜻한다.
                    if ($(this).is(":checked"))  // ":checked"를 이용하여 체크가 되어있는지 아닌지 확인한다.
                        str += $(this).val() + " ";  // 체크된 객체를 str에 저장한다.
                });
                $("#chkmenu").text(str);  // #multiPrint에 체크된 원소를 출력한다.
            });
        });


    </script>
<link href="https://fonts.googleapis.com/css?family=Jua|Play"
	rel="stylesheet">
<!--폰트-->
<!--body { font-family: "Jua", sans-serif;} -->
<link
	href="${pageContext.request.contextPath }/CSS/restaurant_datail.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/CSS/datepicker.min.css"
	rel="stylesheet" type="text/css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/JS/RestaurantDetail.js"></script>
</head>

<body>
	<div class="wrap_contents">
		<%if(chargerDTO != null){ %>
		<a href="" onclick="roomRegister(${rdto.restaurantNum })"> 음식등록하기 </a>
		<%} %>
		<p id="sub">레스토랑 예약하기</p>
		<div class="food_img">
			<img src="Restaurant/upfile/${rdto.restaurantImage }" alt="ymym"
				width="700" height="400">
		</div>
		<div class="res">
			<div class="res_info">
				<ul class="info">
					<li id="name">${rdto.restaurantName }</li>
					<li id="kind">${rdto.restaurantKind }</li>
					<li id="loc">${rdto.restaurantArea }</li>
					<li id="tel">${rdto.restaurantTell }</li>
				</ul>
				<ul class="info_detail">
					<li id="de_info_sub">매장정보</li>
					<li id="de_info">${rdto.restaurantInfo }</li>
					<li id="de_addr">${rdto.restaurantAdd }</li>
				</ul>
			</div>

		</div>

		<div class="res_food_list">
			<div id="h2">
				<p>메뉴 선택</p>
			</div>

			<ul class="re_menu">
				<li class="re_menu_li"><input type="radio" name="chk"
					class="check" value="메뉴1"> <label for="" id="chk">메뉴이름</label>
					<span><img src="../images/food.jpg" alt="" width="180"
						height="160"></span>
					<div>
						<p>
							<span>가격</span>40,000원
						</p>
					</div> <a href="#" class=""><img src="../images/detail.png"
						alt="상세보기" width="100" height="12"></a></li>
				<li class="re_menu_li"><input type="radio" name="chk"
					class="check" value="메뉴2"> <label for="" id="chk">메뉴이름</label>
					<span><img src="../images/food.jpg" alt="" width="180"
						height="160"></span>
					<div>
						<p>
							<span>가격</span>40,000원
						</p>
					</div> <a href="#" class=""><img src="../images/detail.png"
						alt="상세보기" width="100" height="12"></a></li>
				<li class="re_menu_li"><input type="radio" name="chk"
					class="check" value="메뉴3"> <label for="" id="chk">메뉴이름</label>
					<span><img src="../images/food.jpg" alt="" width="180"
						height="160"></span>
					<div>
						<p>
							<span>가격</span>40,000원
						</p>
					</div> <a href="#" class=""><img src="../images/detail.png"
						alt="상세보기" width="100" height="12"></a></li>
				<li class="re_menu_li"><input type="radio" name="chk"
					class="check" value="메뉴4"> <label for="" id="chk">메뉴이름</label>
					<span><img src="../images/food.jpg" alt="" width="180"
						height="160"></span>
					<div>
						<p>
							<span>가격</span>40,000원
						</p>
					</div> <a href="#" class=""><img src="../images/detail.png"
						alt="상세보기" width="100" height="12"></a></li>
			</ul>
		</div>
		<div class="res_table">
			<div class="table_box">
				예약<br>
				<br> <label for="" id="label">인원</label>
				<div id="t_box">
					<select name="" id="select">
						<option value="2명">2명</option>
						<option value="3명">3명</option>
						<option value="4명">4명</option>
					</select>
				</div>
				<label for="" id="label">날짜</label>
				<div id="t_box">
					<p>
						<input type="text" class="date">
					</p>
				</div>
				<label for="" id="label">시간</label>
				<div id="t_box">
					<select name="" id="time">
						<option value="12:00">12:00</option>
						<option value="14:00">14:00</option>
						<option value="16:00">16:00</option>
						<option value="18:00">18:00</option>
						<option value="20:00">20:00</option>
					</select>
				</div>

			</div>
			<div class="chk_menu">
				선택한 예약 정보<br>
				<br>
				<div id="dt" class="chk_date"></div>
				<div id="tm"></div>
				<div id="pp"></div>
				<div id="chkmenu"></div>
				<div id="price">가격,,</div>
			</div>
		</div>

		<div id="btn">
			<button type="submit">주문</button>
		</div>
	</div>
</body>
</html>