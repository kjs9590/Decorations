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
<link href="${pageContext.request.contextPath }/CSS/AccomodationList.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../JS/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../JS/jquery.form.js"></script>   
    
    
</head>

<body>
	<jsp:include page="../include/header.jsp" />
    <div id="main">
<div id="accomodationDetailMain">

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
			success : function(data) {
				$("#ajax").html(data);
			}
		});
	}
</script>

<div id="detailList">

<div id="detailMention">�����ڷ��̼� ���� ����Ʈ</div>
<div id="optionList"><div class="option"><select style="height: 25px; width: 150px;" onchange="area(this.value)" id="selects">	
    
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
   
 </div><div class="option" onclick="hightPrice()">�������ݼ�</div><div class="option" onclick="lowPrice()">�������ݼ�</div><div class="option">�ı��</div></div>
<div id="ajax">
<c:forEach items="${list}" var="list">
<div class="accomodationList"> <img src="Accomodation/upfile/${list.accmodationImgstore}" />
<div class="detailContent">
    <h1><a href="RoomList?num=${list.accomodationNum}">${list.accomodationName } <b id="c">-${list.accmodationArea }-</b></a></h1>
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