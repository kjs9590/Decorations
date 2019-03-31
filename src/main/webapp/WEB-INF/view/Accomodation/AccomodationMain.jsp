<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="Model.AccomodationDTO,java.util.*"%>

<%
	List <AccomodationDTO>accomodationCount = (List)request.getAttribute("AccomodationCount"); 
	%>
<!doctype html>
<html lang="UTF-8">

<head>
	<meta charset="UTF-8">
	<title>accomodation</title>

	<script src="${pageContext.request.contextPath }/JS/Accomodation.js"></script>
	<link href="${pageContext.request.contextPath }/CSS/AccomodationMain.css" rel="stylesheet" type="text/css">
</head>



<!-- 헤더 인클루드 밑에 헤더 지우기-->

<body>
	<jsp:include page="../include/header.jsp" />
	<div id="mainHeader">

		<div id="mainHeaderContent">
			<div id="mainHeaderMent">
				<h2>
					<strong>모든 숙소가 한곳에!</strong>
				</h2>
				아늑한 리조트 부터 화려한 호텔까지!
			</div>
			<div id="mainHeaderBox">

				<div class="mainHeaderSerach">
					<div class="top">
						숙소
						<div class="bottom" id="kinds" onclick="kind()">숙박 타입을 선택해주세요</div>
					</div>
				</div>
             
				<div class="mainHeaderSerach">
					<div class="top">
						지역
						<div class="bottom" id="areas" onclick="area()">지역을 선택해주세요</div>
					</div>
				</div>

				<div class="mainHeaderSerach">
					<div class="top">
						체크인
						<div class="bottom">
							<input type="date">
						</div>
					</div>
				</div>

				<div class="mainHeaderSerach">
					<div class="top">
						체크아웃
						<div class="bottom">
							<input type="date">
						</div>
					</div>
				</div>

				<div class="mainHeaderSerach">
				   <form action="roomlistsearchs">
         <div class="first2">
            <input id="kind" name="area"   value="" type="hidden">
            <input id="area" name="kind" value="" type="hidden">
            
            <button style="height: 91px; width: 112%; background-color: #07c; color: white; font-size:30px; ">숙소검색</button>
         </div>
      </form>
				</div>

			</div>
		</div>
	</div>
	<div id="SearchBox">
		<div id="boxKind">
			<ul>
				<li onclick="insert1(this)">호텔</li>
				<li onclick="insert1(this)">모텔</li>
				<li onclick="insert1(this)">펜션</li>
				<li onclick="insert1(this)">리조트</li>
			</ul>
		</div>
		<div id="boxArea">
     	<ul class="list" >
			<li onclick="insert(this)">서울</li>
			<li onclick="insert(this)">경기</li>
			<li onclick="insert(this)">인천</li>
			<li onclick="insert(this)">강원</li>
			<li onclick="insert(this)">제주</li>
			<li onclick="insert(this)">대전</li>
			<li onclick="insert(this)">세종</li>
		</ul>
		<ul class="list">
			<li onclick="insert(this)">충북</li>
			<li onclick="insert(this)">충남</li>
			<li onclick="insert(this)">부산</li>
			<li onclick="insert(this)">울산</li>
			<li onclick="insert(this)">경남</li>
			<li onclick="insert(this)">대구</li>
			<li onclick="insert(this)">경북</li>
        </ul>
        
        	<ul class="list">
			<li onclick="insert(this)">광주</li>
			<li onclick="insert(this)">전남</li>
			<li onclick="insert(this)">전북</li>
        </ul>
   </div>
	</div>
	<div id="mainContent">
		<div id="listMention">4가지 종류의 숙소를 골라보세요!</div>
		<div id="accomodationList">
		
			<div class="accmodation">
				<img src="${pageContext.request.contextPath }/images/hotel.jpg"><a href="AccomodationListEach?kind=호텔">호텔</a>
			    <p>
				<%if(accomodationCount.get(1).getCount()!=null) {%>
				<%=accomodationCount.get(1).getCount()%><%}else{%>0<% } %>개 호텔</p>
			</div>
		
			<div class="accmodation">
				<img src="${pageContext.request.contextPath }/images/motel.jpg"><a href="AccomodationListEach?kind=모텔" >모텔</a>
				  <p>
				<%if(accomodationCount.get(3).getCount()!=null) {%>
				<%=accomodationCount.get(3).getCount()%><%}else{%>0<% } %>개 모텔</p>
			</div>
			
			<div class="accmodation">
				<img src="${pageContext.request.contextPath }/images/pension.jpg"><a href="AccomodationListEach?kind=펜션" >펜션</a>
				  <p>
				<%if(accomodationCount.get(0).getCount()!=null) {%>
				<%=accomodationCount.get(0).getCount()%><%}else{%>0<% } %>개 펜션</p>
			</div>
			
			<div class="accmodation">
				<img src="${pageContext.request.contextPath }/images/resort.jpg"><a href="AccomodationListEach?kind=리조트" >리조트</a>
				  <p>
				<%if(accomodationCount.get(2).getCount()!=null) {%>
				<%=accomodationCount.get(2).getCount()%><%}else{%>0<% } %>개 리조트</p>
			</div>
		</div>
		
		<div id="accomodationList1">
			<div id="listMention">모든 숙박을 한눈에!</div>
			<div id="list">

				<ul id="slideShow">
                    <c:forEach items="${list}" var="list">
					<li><div class="listContent">
							<img src="Accomodation/upfile/${list.accmodationImgstore}" />
							<div class="mention" style="line-height: 2em">

								<h2>${list.accomodationName} ${list.accmodationKind}</h2>

								<h3>${list.accomodationInform}</h3>
							</div>
                                <h6>객실 평균 가격: ${list.accomodationAvg}원</h6>
						</div></li>
                   </c:forEach>
				
				</ul>
			</div>
			<div id="controll">
				<a href="javascript:slide('slideShow', 'left', 2)">◀</a> <a
					href="javascript:slide('slideShow', 'right', 2)">▶</a>
			</div>
		</div>

	</div>
</body>

</html>