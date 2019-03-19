<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String kind=(String)request.getAttribute("kind"); %>
<%Integer count=(Integer)request.getAttribute("count"); %>

<!doctype html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>accomodation</title>
<link href="../CSS/AccomodationList.css" rel="stylesheet" type="text/css">
 
</head>

<body>
    <div id="main">
<div id="accomodationDetailMain">

    <div class="detailSearch">

<div id="mainSearch">검색</div>
<p>숙소지역</p>
<select>
        <option>서울</option>   
       </select>
<p>숙소 종류</p>
<select>
        <option>호텔</option>   
       </select>
<p>객실수</p>
       <select>
        <option>10명</option>   
       </select>

       <p>체크인 날짜</p>
<input type="date">
<p>체크아웃 날짜</p>
<input type="date"><br>
<button>검색하기</button>
</div>

<div id="detailList">

<div id="detailMention">인천: 검색된 <%=kind %> <%=count%>개</div>

<div id="optionList"><div class="option">지역</div><div class="option">높은가격순</div><div class="option">낮은가격순</div><div class="option">후기순</div></div>

<c:forEach items="${list}" var="list">
<div class="accomodationList"> <img src="./upfile/${list.accmodationImgstore}" />
<div class="detailContent">
    <h3><a href="RoomList?num=${list.accomodationNum}">${list.accomodationName }(${list.accmodationArea })</a></h3>
    <p>주소: ${list.accomodationAdd }</p>  
    <p>숙소 번호: ${list.accmodationTell }</p> 
    <b>${list.accomodationInform}</b>
</div>
</div>
</c:forEach>
</div>
             
</div>

</div>
</div>
</body>

</html>