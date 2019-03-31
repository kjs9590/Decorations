<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="Model.*,java.util.*"%>

<%
	List <OrderDetailDTO>odt= (List)request.getAttribute("list"); 
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문내역</title>
<link href="https://fonts.googleapis.com/css?family=Jua|Play"
	rel="stylesheet">
<!--폰트-->
<!--body { font-family: "Jua", sans-serif;} -->

<link href="${pageContext.request.contextPath }/CSS/f_order.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrap_mypage">
		<div class="table">
			<div class="o_menu">
				<ul>
					<li><a href="OrderDetail?num=1">MOVIE</a></li>
					<li><a href="OrderDetail?num=2">RESTAURANT</a></li>
					<li><a href="OrderDetail?num=3">ACCOMMODATION</a></li>
					<li><a href="OrderDetail?num=4">FESTIVAL</a></li>
				</ul>
			</div>
			<h2>나의 주문내역</h2>
			<%if(odt !=null) {%>
			<%for(int i=0; i<odt.size(); i++) {%>
			<table id="o_table">
				
				<tr>
<%-- 					<td rowspan="7"><img src="Product/date/${list.imgStore }" alt="" width="200" height="200"></td>
 --%>				</tr>
				<tr>
					<td id="s_num">상품명</td>
					<td id="num"><%=odt.get(i).getProductName() %></td>

				</tr>
				<tr>
					<td id="sub">체크인</td>
					<td><%=odt.get(i).getCheckIn()%></td>
					<td id="sub">체크아웃</td>
					<td><%=odt.get(i).getCheckOut()%></td>
				</tr>
				<tr>
					<td id="s_num">좌석</td>
					<td><%=odt.get(i).getSeatNum()%></td>
					<td id="sub">옵션상품</td>
					<td><%=odt.get(i).getOptionProduct() %></td>
				</tr>
				<tr>
					<td colspan="2" id="sub">예약날짜</td>
					<td colspan="2"><%=odt.get(i).getReserveDate() %></td>
				</tr>
				<tr>
					<td colspan="2" id="sub">예약시간</td>
					<td colspan="2"><%=odt.get(i).getReserveTime() %></td>
				</tr>
			</table>
			<%}} %>
		</div>
	</div>
</body>
</html>