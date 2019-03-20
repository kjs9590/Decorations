<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="Model.AccomodationRegisterDTO,java.util.*"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% List <AccomodationRegisterDTO>aRlist=(List)request.getAttribute("list"); %>
<%int count=3; %>
<!doctype html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<title>MAIN</title>

<link href="../CSS/AccomodationDetail.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="../JS/AccomodationDetail.js"></script>
<script type="text/javascript">


</script>
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
				<h4><span>당일예약취소가능</span><span>현장적립</span><span>최저가보상</span></h4>
				<p><img src="../images\v.PNG">미리예약시 1% 적립</p>
				<p><img src="../images\v.PNG">당일예약 건 입실 3시간 전까지 100% 환불가능</p>
				<p><img src="../images\v.PNG">정보제공</p>

			</div>

             <div class="chekinChekout">
				<div id="chekin">체크인<input type="date"></div>
				<div id="chekout">체크아웃<input type="date"></div>

			</div>
			 <script type="text/javascript">
			
			 </script>
			<%for(int i=0; i<aRlist.size(); i++){ %>
		          
		          <%String img[]=aRlist.get(i).getRoomImgstore().split("-");%>
			      <%count++; %>
			<div class="room">
				<div class="roomImg">
                  <div><img src="./upfile1/<%=img[0]%>" alt="" id="imgss"></div>
                 <div class="imgBox">
                 <%for(int a=0; a<img.length; a++){ %>
		         
		          <div class="imgBoxs"><img src="./upfile1/<%=img[a]%>" value="dd" style="height: 50px; width: 50px;" onclick="changImg(<%=count%>,this.src)" ></div>
		      
		         <%} %> 
		         
		         </div>
		          </div>
			 
			  <div class="roomInfos">
					<h2><%=aRlist.get(i).getRoomKind() %></h2>
					<h4>기준2명/최대<%=aRlist.get(i).getRoomCount() %>명</h4>
					<h4>입실:<%=aRlist.get(i).getRoomAd() %> 퇴실 :<%=aRlist.get(i).getRoomEx() %></h4>
		         	<h1><%=aRlist.get(i).getRoomPrice() %>원</h1></div>
				
				</div>
				<% count+=img.length;}%> 
			</div>

		</div>
   <script type="text/javascript">
   function changImg(a,i){
	var img=i.split('/')
	document.getElementsByTagName("img")[a].src="./upfile1/"+img[6];
   }
   </script>
	</div>
	</div>
</body>

</html>