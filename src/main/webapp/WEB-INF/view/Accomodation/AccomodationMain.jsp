<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="Model.AccomodationDTO,java.util.*"%>

<%
	List <AccomodationDTO>accomodationCount = (List)request.getAttribute("AccomodationCount"); 
	%>
<!doctype html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>accomodation</title>

<script src="../JS/AccomodationMain.js"></script>
<link href="../CSS/AccomodationMain.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div id="mainHeader">

		<div id="mainHeaderContent">
			<div id="mainHeaderMent">
				<h2>
					<strong>��� ���Ұ� �Ѱ���!</strong>
				</h2>
				�ƴ��� ����Ʈ ���� ȭ���� ȣ�ڱ���!
			</div>
			<div id="mainHeaderBox">

				<div class="mainHeaderSerach">
					<div class="top">
						����
						<div class="bottom">����Ʈ</div>
					</div>
				</div>

				<div class="mainHeaderSerach">
					<div class="top">
						����
						<div class="bottom">����Ʈ</div>
					</div>
				</div>

				<div class="mainHeaderSerach">
					<div class="top">
						üũ��
						<div class="bottom">
							<input type="date">
						</div>
					</div>
				</div>

				<div class="mainHeaderSerach">
					<div class="top">
						üũ�ƿ�
						<div class="bottom">
							<input type="date">
						</div>
					</div>
				</div>

				<div class="mainHeaderSerach">
					<div id="serach">�˻�</div>
				</div>

			</div>
		</div>
	</div>
	<div id="mainContent">
		<div id="listMention">4���� ������ ���Ҹ� ��󺸼���!</div>
		<div id="accomodationList">
			<div class="accmodation">
				<img src="../images/hotel.jpg"><a href="AccomodationListEach">ȣ��</a>
			    <p>
				<%if(accomodationCount.get(1).getCount()!=null) {%>
				<%=accomodationCount.get(0).getCount()%><%}else{%>0<% } %>�� ȣ��</p>
			</div>
			<div class="accmodation">
				<img src="../images/motel.jpg"><a href="AccomodationListEach">����</a>
				  <p>
				<%if(accomodationCount.get(1).getCount()!=null) {%>
				<%=accomodationCount.get(0).getCount()%><%}else{%>0<% } %>�� ����</p>
			</div>
			<div class="accmodation">
				<img src="../images/pension.jpg"><a href="AccomodationListEach">���</a>
				  <p>
				<%if(accomodationCount.get(1).getCount()!=null) {%>
				<%=accomodationCount.get(0).getCount()%><%}else{%>0<% } %>�� ���</p>
			</div>
			<div class="accmodation">
				<img src="../images/resort.jpg"><a href="AccomodationListEach">����Ʈ</a>
				  <p>
				<%if(accomodationCount.get(1).getCount()!=null) {%>
				<%=accomodationCount.get(0).getCount()%><%}else{%>0<% } %>�� ����Ʈ</p>
			</div>
		</div>
		<div id="accomodationList1">
			<div id="listMention">��� ������ �Ѵ���!</div>
			<div id="list">

				<ul id="slideShow">
					<a href="AccomodationForm">���ҵ���ϱ�</a>
                    <c:forEach items="${list}" var="list">
					<li><div class="listContent">
							<img src="./upfile/${list.accmodationImgstore}" />
							<div class="mention" style="line-height: 2em">

								<h2>${list.accomodationName}(${list.accmodationKind})</h2>

								<h3>${list.accomodationInform}</h3>
							</div>

						</div></li>
                   </c:forEach>
				
				</ul>
			</div>
			<div id="controll">
				<a href="javascript:slide('slideShow', 'left', 2)">��</a> <a
					href="javascript:slide('slideShow', 'right', 2)">��</a>
			</div>
		</div>

	</div>
	</div>
</body>

</html>