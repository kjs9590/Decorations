<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% int duplicate =(int)request.getAttribute("result"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%if(duplicate==1){ %>
	<div id="Duplicate" style="color: red" value="1">���̵� �̹� �����մϴ�.</div>

	<%}else{ %>
	<div id="idDuplicateCheck" style="color: green">���̵� ����� �����մϴ�.</div>

	<script type="text/javascript">

	
</script>
	<%} %>
</body>
</html>