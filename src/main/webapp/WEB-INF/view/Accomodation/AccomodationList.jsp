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

<div id="mainSearch">�˻�</div>
<p>��������</p>
<select>
        <option>����</option>   
       </select>
<p>���� ����</p>
<select>
        <option>ȣ��</option>   
       </select>
<p>���Ǽ�</p>
       <select>
        <option>10��</option>   
       </select>

       <p>üũ�� ��¥</p>
<input type="date">
<p>üũ�ƿ� ��¥</p>
<input type="date"><br>
<button>�˻��ϱ�</button>
</div>

<div id="detailList">

<div id="detailMention">��õ: �˻��� <%=kind %> <%=count%>��</div>

<div id="optionList"><div class="option">����</div><div class="option">�������ݼ�</div><div class="option">�������ݼ�</div><div class="option">�ı��</div></div>

<c:forEach items="${list}" var="list">
<div class="accomodationList"> <img src="./upfile/${list.accmodationImgstore}" />
<div class="detailContent">
    <h3><a href="RoomList?num=${list.accomodationNum}">${list.accomodationName }(${list.accmodationArea })</a></h3>
    <p>�ּ�: ${list.accomodationAdd }</p>  
    <p>���� ��ȣ: ${list.accmodationTell }</p> 
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