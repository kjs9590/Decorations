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
    <script type="text/javascript" src="../JS/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../JS/jquery.form.js"></script>   
    
    
</head>

<body>
    <div id="main">
<div id="accomodationDetailMain">

    <div class="detailSearch">

<div id="mainSearch">�˻�</div>
<h1>��������</h1>
<select  style="height: 45px" onchange="area(this.value)">	
    <option>����</option>  
    <option>���</option>  
    <option>��õ</option>  
    <option>����</option>  
    <option>����</option>  
    <option>����</option>  
    <option>����</option>  
    <option>���</option>  
    <option>�泲</option>  
    <option>�λ�</option>  
    <option>���</option>  
    <option>�泲</option>  
    <option>�뱸</option>
    <option>���</option>  
    <option>����</option>  
    <option>����</option>
    <option>����</option>  
     
       </select>
<h2 onclick="hightPrice()">���� ���ݼ�</h2>
<h2 onclick="lowPrice()">���� ���ݼ�</h2>
</div>
<script>
function area(val){
	var val=val;
	$.ajax({
		type : "POST",
		url : "AccomodationKind",
		data : "area=" + val+"&kind=<%=kind%>",
		datatype : "html",
		success : function(data){
			$("#ajax").html(data);
		}
});
}

function hightPrice(){
	var val=val;
	$.ajax({
		type : "POST",
		url : "AccomodationPrice",
		data : "kind=<%=kind%>",
		datatype : "html",
		success : function(data){
			$("#ajax").html(data);
		}
});
}

function lowPrice(){
	var val=val;
	$.ajax({
		type : "POST",
		url : "AccomodationLowPrice",
		data : "kind=<%=kind%>",
		datatype : "html",
		success : function(data){
			$("#ajax").html(data);
		}
});
}

</script>

<div id="detailList">

<div id="detailMention">�����ڷ��̼� <%=kind %> ����Ʈ</div>

<div id="ajax">
<c:forEach items="${list}" var="list">
<div class="accomodationList"> <img src="./upfile/${list.accmodationImgstore}" />
<div class="detailContent">
    <h3><a href="RoomList?num=${list.accomodationNum}">${list.accomodationName } <b id="c">-${list.accmodationArea }-</b></a></h3>
    <p>�ּ�: ${list.accomodationAdd }</p>  
    <p>���� ��ȣ: ${list.accmodationTell }</p> 
    <p>���� ��� ����: <b id="b">${list.accomodationAvg }</b>��</p> 
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