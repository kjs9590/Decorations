<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.*"%>
<% MemberDTO memberDTO = (MemberDTO)session.getAttribute("memberDTO");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>MAIN</title>
    <link href="https://fonts.googleapis.com/css?family=Jua|Play" rel="stylesheet">
    <!--폰트-->
    <!--body { font-family: "Jua", sans-serif;} -->
    <link href="${pageContext.request.contextPath }/CSS/main.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/CSS/jquery-sakura.css" rel="stylesheet">
    <style></style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/JS/jquery-sakura.js"></script>
    
    <link href="${pageContext.request.contextPath }/CSS/header.css" rel="stylesheet" type="text/css">

 
</head>

<!-- 헤더 인클루드 밑에 헤더 지우기-->

<body>
	<jsp:include page="../include/header.jsp" />
   
    <!--여기까지 헤더-->

    <div class="wrap">
        <div id="schedule">
            <div id="mainimg">
                <img src="images/cherry-blossom.jpg" alt="main" width="100%" height="800px" id="m_img">
                <div id="plan" onclick="location.href=''">
                    <h2>DATECORATION</h2>
                    <div><a href="#">make a plan</a></div>
                    <div id="plan_table"><a href=""><img src="images/plan_table.JPG" alt="plan_table"></a></div>
                </div>
            </div>

        </div>
        <div id="movie"></div>
        <div id="restaurant"></div>
        <div id="festival"></div>
        <div id="accommodation"></div>
    </div>
</body>
</html>