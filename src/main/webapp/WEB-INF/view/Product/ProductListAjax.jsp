<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page import="java.util.*"%>
<%@ page import="Model.*"%>
<% 
	ArrayList<ProductDTO> dto = (ArrayList<ProductDTO>)request.getAttribute("dto");
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="table">
		<tr>
			<td id="sub">이름</td>
			<td id="sub">정보</td>
			<td id="sub">주소</td>
			<td id="sub">연락처</td>
		</tr>
		<c:forEach items="${pDtos }" var="pDtos">
			<tr>
			<td id="con">${pDtos.name }</td>
			<td id="con">${pDtos.info }</td>
			<td id="con">${pDtos.address }</td>
			<td id="con">${pDtos.number }</td>
		</tr>
		</c:forEach>
		
<%-- 		<% for(int a = 0; a< dto.size(); a++){ %>
		<tr>
			<td id="con"><%=dto.get(a).getName() %></td>
			<td id="con"><%=dto.get(a).getInfo() %></td>
			<td id="con"><%=dto.get(a).getAddress() %></td>
			<td id="con"><%=dto.get(a).getNumber() %></td>
		</tr>
		<%
				}
			%> --%>
	</table>
</body>
</html>