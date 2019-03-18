<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.*"%>
<% MemberDTO memberDTO = (MemberDTO)session.getAttribute("memberDTO");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title></title>
    <style></style>
    <script>
    </script>
    <link href="https://fonts.googleapis.com/css?family=Jua|Play" rel="stylesheet">
    <!--폰트-->
    <!--body { font-family: "Jua", sans-serif;} -->
    <link href="../CSS/header.css" rel="stylesheet" type="text/css">

</head>

<body>
    <div id="header">
        <div id="header_menu">
            <h1>
                <a href="" class="logo"><img src="images/dc1.png" width="100%" height="100%"></a>
            </h1>
            <ul id="menu_list">
                <li>
                    <ul id="h_menu">

						<%if(memberDTO==null){ %>
                        <li><a href="">상품등록하기</a></li><!--담당자 로그인떄만 보여지게-->
                        <%} %>
                        <%if(memberDTO==null){ %>
                        <li><a href="Login"> LOGIN </a></li>
                        <li><a href="CLogin"> CHARGER LOGIN </a></li>
                        <li><a href="Member/MemberRegister"> SIGN UP </a></li>
                        <%} %>
                        <%if(memberDTO!=null){ %>
                        <li><a href="Logout"> LOGOUT </a></li>
                        <%} %>
                        
                        <li><a href="#"> CUSTOMERSERVICE </a></li>
                    </ul>
                </li>
                <li>
                    <ul id="mainmenu">
                        <li><a href="#"> MOVIE </a></li>
                        <li><a href="#"> RESTAURANT </a></li>
                        <li><a href="#"> FESTIVAL </a></li>
                        <li><a href="#"> ACCOMMODATION </a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--여기까지 헤더-->
</body>

</html>