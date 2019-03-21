<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 자기가 쓸거 알아서 주석풀고 사용하기 [순서대로 form설정, spring기능 사용, c태그 사용] -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!--제목 설정-->
<title>공지사항 글쓰기</title>

<!-- 기본 설정  => 여기서부터 -->
<meta name="viewport" content="width = device-width, initial-scale = 1.0, maximum-scale = 1.0 minimum-scale = 1.0">
<!-- font 설정 -->
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon"
	rel="stylesheet">
<!-- css 적용 : font-family: 'Do Hyeon', sans-serif; -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR"
	rel="stylesheet">
<!-- css 적용 : font-family: 'Noto Sans KR', sans-serif; -->

<!--Jquery, JqueryUI설정-->
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
	integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
	crossorigin="anonymous"></script>

<!--css 설정(기본값)-->
<link href="/css/body.css" rel="stylesheet" type="text/css">
<link href="/css/header.css" rel="stylesheet" type="text/css">
<link href="/css/footer.css" rel="stylesheet" type="text/css">

<!-- js 설정(기본값) -->
<script src = "../js/header.js"></script>

<!-- 여기까지 노터치(변경하거나 추가하지 마시오) -->

<!-- contents css설정(직접 만든 css를 여기에 올려주세요) 주석 치우고 css/이름만 바꾸면 됨.css -->
<link href="../CSS/NoticeWrite.css" rel="stylesheet" type="text/css">
<!-- contents js설정(직접 만든 js를 여기에 올려주세요)  주석 치우고 js/이름만 바꾸면 됨.js  -->
<!-- <script src = "js/sample.js"></script> -->


</head>
<body>
<!-- Header 시작 -->
<%-- <jsp:include page="Header.jsp" /> --%>
<!-- Header 끝 -->
<!-- Content 시작(내용 첨가) -->
<form:form method="post">
 <div class="contents">

        <table>
            <tr>
                <td colspan="4">
                   <div id="sub" align="center"><h2>공지 글쓰기</h2></div>
                </td>
            </tr>
            <tr>
                <td id="tdsub">
                    구분
                </td>
                <td><select name="BoardKind">
                        <option value="공지사항">공지사항</option>
                    </select>
                </td>
 
                <td id="tdsub">
                    제 목
                </td>
                <td>
                    <input name="BoardTitle" id="subject" type="text" maxlength="100" value="" />
                </td>
            </tr>
            <tr>
                <td id="tdsub">
                    내 용
                </td>
                <td colspan="3">
                    <textarea name="BoardContent" cols="76" rows="15"></textarea>
                </td>
            </tr>
       <!--      <tr>
                <td colspan="3" id="tdsub">
                    파일 첨부
                </td>
                <td>
                    <input name="file" type="file" multiple="multiple" />
                </td>
            </tr> -->

            <tr>
                <td colspan="5" align="center">
                    <input type="submit" value="등록" />
                    <input type="reset"/>
                </td>
            </tr>
        </table>
    </div>
</form:form>
<!-- Content 끝 -->
<!-- Footer 시작 -->
<%-- <jsp:include page="Footer.jsp" /> --%>
<!-- Footer 끝 -->
</body>
</html>