<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>��ȭ�� ����: <select style="height: 30px; width: 50%;" onchange="theaterChoice(this.value)">
          <option>��ȭ���� �������ּ���</option>
           <c:forEach items="${list}" var="list">
         <option>${list.theaterNum}. ${list.theaterName} ${list.theaterAdd}</option>  
           
           </c:forEach>
      </select>
</body>
</html>