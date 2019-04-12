<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 자기가 쓸거 알아서 주석풀고 사용하기 [순서대로 form설정, spring기능 사용, c태그 사용] -->
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!--제목 설정-->
<title>일정표</title>

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
<link href="CSS/Schedule_content.css" rel="stylesheet" type="text/css"> 
<!-- contents js설정(직접 만든 js를 여기에 올려주세요)  주석 치우고 js/이름만 바꾸면 됨.js  -->
<script src = "JS/Schedule.js"></script> 


</head>
<body>

<!-- Header 시작 -->
<jsp:include page="../include/header.jsp" />
<!-- Header 끝 -->
<!-- Content 시작(내용 첨가) -->
<div id="schedulebox">
	<div id="title">나만의 일정표 만들기</div>
	<div id="memberId">${memberDTO.memberId }님</div>
</div>
<div id="scheduleMain">
    <div id="scheduleContent">
      <div class="scheuleRow">
        <div class="scheduleNum">No</div>
        <div class="scheduleTime">시간</div>
        <div class="schedulePlus">일정</div>
        <div class="scheduleDate">데이트 상품 추가</div>
        <div class="schedulePrice">비용</div>
      </div>
      <div class="scheuleRow">
        <div class="scheduleNum">1</div>
        <div class="scheduleTime">10:00~11:00</div>
        <div class="schedulePlus" onclick="insRow(this)">
          <div class="schedule">클릭시 일정생성</div>
        </div>
        <div class="scheduleDate"><input type="button" value="추가" onclick="location.href='ScheduleSelect' "></div>
      </div>
      <div class="scheuleRow">
        <div class="scheduleNum">2</div>
        <div class="scheduleTime">11:00~12:00</div>
        <div class="schedulePlus" onclick="insRow(this)">
          <div class="schedule">클릭시 일정생성</div>
        </div>
        <div class="scheduleDate"><input type="button" value="추가" onclick="location.href='ScheduleSelect' "></div>
      </div>
      <div class="scheuleRow">
        <div class="scheduleNum">3</div>
        <div class="scheduleTime">12:00~13:00</div>
        <div class="schedulePlus" onclick="insRow(this)">
          <div class="schedule">클릭시 일정생성</div>
        </div>
        <div class="scheduleDate"><input type="button" value="추가" onclick="location.href='ScheduleSelect' "></div>
        30000원
      </div>
      <div class="scheuleRow">
        <div class="scheduleNum">4</div>
        <div class="scheduleTime">13:00~14:00</div>
        <div class="schedulePlus" onclick="insRow(this)">
          <div class="schedule">클릭시 일정생성</div>
        </div>
        <div class="scheduleDate"><input type="button" value="추가" onclick="location.href='ScheduleSelect' "></div>
      </div>
      <div class="scheuleRow">
        <div class="scheduleNum">5</div>
        <div class="scheduleTime">14:00~15:00</div>
        <div class="schedulePlus" onclick="insRow(this)">
          <div class="schedule">클릭시 일정생성</div>
        </div>
        <div class="scheduleDate"><input type="button" value="추가" onclick="location.href='ScheduleSelect' "></div>
      </div>
      <div class="scheuleRow">
        <div class="scheduleNum">6</div>
        <div class="scheduleTime">15:00~16:00</div>
        <div class="schedulePlus" onclick="insRow(this)">
          <div class="schedule">클릭시 일정생성</div>
        </div>
        <div class="scheduleDate"><input type="button" value="추가" onclick="location.href='ScheduleSelect' "></div>
      25000원
      </div>
      <div class="scheuleRow">
        <div class="scheduleNum">7</div>
        <div class="scheduleTime">16:00~17:00</div>
        <div class="schedulePlus" onclick="insRow(this)">
          <div class="schedule">클릭시 일정생성</div>
        </div>
        <div class="scheduleDate"><input type="button" value="추가" onclick="location.href='ScheduleSelect' "></div>
      </div>
      <div class="scheuleRow">
        <div class="scheduleNum">8</div>
        <div class="scheduleTime">17:00~18:00</div>
        <div class="schedulePlus" onclick="insRow(this)">
          <div class="schedule">클릭시 일정생성</div>
        </div>
        <div class="scheduleDate"><input type="button" value="추가" onclick="location.href='ScheduleSelect' "></div>
      </div>
      <div class="scheuleRow">
        <div class="scheduleNum">9</div>
        <div class="scheduleTime">18:00~19:00</div>
        <div class="schedulePlus" onclick="insRow(this)">
          <div class="schedule">클릭시 일정생성</div>
        </div>
        <div class="scheduleDate"><input type="button" value="추가" onclick="location.href='ScheduleSelect' "></div>
      39000원
      </div>
      <div class="scheuleRow">
        <div class="scheduleNum">10</div>
        <div class="scheduleTime">19:00~20:00</div>
        <div class="schedulePlus" onclick="insRow(this)">
          <div class="schedule">클릭시 일정생성</div>
        </div>
        <div class="scheduleDate"><input type="button" value="추가" onclick="location.href='ScheduleSelect' "></div>
        60000원
      </div>
      <div id="total">
        <div id="totalPrice">합계</div>
        <div id="totalPrices">154000원</div>
      </div>
      


  
    </div>
    <div class="skinBox">
        <div class="skintitle">풍경테마</div>
        <div class="Thema" id="threeThema" onclick="threeThema()"><img src="images/sky.jpg" style="width: 100%; height: 100%;"></div>
    </div>
    <div class="skinBox">
        <div class="skintitle">애니매이션테마</div>
        <div class="Thema" id="twoThema" onclick="twoThema()"><img src="images/create.png" style="width: 100%; height: 100%;"></div>
    </div>
    <div class="skinBox">
          <div class="skintitle">마블시리즈테마</div>
         <div class="Thema" id="oneThema" onclick="oneThema()"><img src="images/hero2.jpg" style="width: 60%; height: 100%;"></div>
    </div>
     <div class="skinBox">
          <div class="skintitle">테마없음</div>
         <div class="Thema" id="oneThema" onclick="oneThema()"></div>
    </div>
   
  </div>
<!-- Content 끝 -->
<!-- Footer 시작 -->
<%-- <jsp:include page="Footer.jsp" /> --%>
<!-- Footer 끝 -->
</body>
</html>