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
  <script type="text/javascript" src="Dacorations/JS/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="Dacorations/JS/jquery.form.js"></script>    
    
    
</head>

<body>
    <div id="main">
<div id="accomodationDetailMain">

    <div class="detailSearch">

<div id="mainSearch">검색</div>
<h1>숙소지역</h1>
<select  style="height: 45px" onchange="area(this.value)">	
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
<h2>높은 가격순</h2>
<h2>낮은 가격순</h2>
</div>
<script>
function area(val){
	var val=val;
	alert(val);
	$.ajax({
		type : "POST",
		url : "AccomodationKind",
		data : "area=" + val+"&kind="+<%=kind%>,
		datatype : "html",
		success : function(data){
			$("#ajax").html(data);
		}
});
}

</script>

<div id="detailList">

<div id="detailMention">인천: 검색된 <%=kind %> <%=count%>개</div>

<div id="ajax">
<c:forEach items="${list}" var="list">
<div class="accomodationList"> <img src="./upfile/${list.accmodationImgstore}" />
<div class="detailContent">
    <h3><a href="RoomList?num=${list.accomodationNum}">${list.accomodationName }(${list.accmodationArea })</a></h3>
    <p>주소: ${list.accomodationAdd }</p>  
    <p>숙소 번호: ${list.accmodationTell }</p> 
    <p>객실 평균 가격: ${list.accomodationAvg }원</p> 
    <b>${list.accomodationInform}</b>
</div>
</div>
</c:forEach>
</div>
 </div> 
</div>

</div>
</div>
</body>

</html>