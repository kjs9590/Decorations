<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <!--제목 설정-->
    <title>
        메인
    </title>
    <!-- 기본 설정 -->
    <meta name="viewport" content="width = device-width, initial-scale = 1.0, 
	maximum-scale = 1.0 minimum-scale = 1.0">
    <!--Jquery설정-->
    <script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <!--폰트설정-->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <!-- css 적용 : font-family: 'Do Hyeon', sans-serif; -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <!-- css 적용 : font-family: 'Noto Sans KR', sans-serif; -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR" rel="stylesheet">
    <!-- css 적용 : font-family: 'Noto Serif KR', serif; -->
    <!--css 설정(기본값)-->
  
    <link href="${pageContext.request.contextPath }/CSS/MovieMain.css" rel="stylesheet" type="text/css">
       <link href="../CSS/header.css" rel="stylesheet" type="text/css">

    
   
    <script src="JS/MovieMain.js"></script>
<script>
function area(area){
	
	$.ajax({
		type : "POST",
		url : "AccomodationKind",
		data : "area=" + area",
		datatype : "html",
		success : function(data){
			$("#ajax").html(data);
		}
});
}
</script>
</head>

<body>
    <jsp:include page="../include/header.jsp" />
    <div id="contents">
       <div class="click_box"><button class="prev">◁</button></div>
        <div id="ad_img">
            <p><img src="./images/Mov1.jpg" onclick="location.href='#'"></p>
        </div>
        <div class="click_box"><button class="next">▷</button></div>
       
    </div>
     <div class="theraterSerch">
      <div id="therater">영화관 찾기</div>
      <h3>영화관 종류: <select style="height: 30px; width: 50%;">
          <option>메가박스</option>
          <option>롯데시네</option>
          <option>CGV</option>
    </select></h3>
    <h3>영화관 지역: <select style="height: 30px; width: 50%;" onchange="area(this.value)">
            <option>서울</option>  
            <option>경기</option>  
            <option>인천</option>  
            <option>강원</option>  
            <option>제주</option>  
            <option>대전</option>  
            <option>세종</option>  
            <option>충북</option>  
            <option>충남</option>  
            <option>부산</option>  
            <option>울산</option>  
            <option>경남</option>  
            <option>대구</option>
            <option>경북</option>  
            <option>광주</option>  
            <option>전남</option>
            <option>전북</option>  
      </select></h3>
      <h3>영화관 선택: <select style="height: 30px; width: 50%;">
            <option>서울</option>  
            <option>경기</option>  
            <option>인천</option>  
      </select></h3>

     </div>
     <div class="footer">
            <fieldset>
                <legend>영화관</legend>
           <div id="theaterName"><img src="dd"></div>
            <h3>영화관 이름:</h3>
            <h3>영화관 주소:</h3>
           <h3>영화관 전화번호:</h3>
           <fieldset>
                <legend>상영 영화</legend>
           
           <div id=nowplaying>
                <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>제 1관</h4>
                <h5>상영 영화: 캡틴마블</h5>
                <h5>상영 시간: 2시</h5>
                <h5>남은 좌석: 50석</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>제 1관</h4>
                <h5>상영 영화: 캡틴마블</h5>
                <h5>상영 시간: 2시</h5>
                <h5>남은 좌석: 50석</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>제 1관</h4>
                <h5>상영 영화: 캡틴마블</h5>
                <h5>상영 시간: 2시</h5>
                <h5>남은 좌석: 50석</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>제 1관</h4>
                <h5>상영 영화: 캡틴마블</h5>
                <h5>상영 시간: 2시</h5>
                <h5>남은 좌석: 50석</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>제 1관</h4>
                <h5>상영 영화: 캡틴마블</h5>
                <h5>상영 시간: 2시</h5>
                <h5>남은 좌석: 50석</h5>
                </div>
                
               </div>
            </div>   
        </fieldset>    
        
        </fieldset>
        </div>
    
     <div class="footers">
        <fieldset>
            <legend>개봉영화</legend>
        <div id=nowplaying>
            <div class=movie_list><img src="./images/movie1.JPG" >
            <div class="movieMention"><h2>데드풀</h2><p><b>장르:</b>SF</p><P><b>연령:</b>12세</P><P><b>상영시간:</b>2시간<h3>줄거리</h3>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</P></div>
           </div>
            <div class=movie_list><img src="./images/movie2.JPG" >
                <div class="movieMention"><h2>데드풀</h2><p><b>장르:</b>SF</p><P><b>연령:</b>12세</P><P><b>상영시간:</b>2시간<h3>줄거리</h3>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</P></div>
            </div>
            <div class=movie_list><img src="./images/movie3.JPG" >
                <div class="movieMention"><h2>데드풀</h2><p><b>장르:</b>SF</p><P><b>연령:</b>12세</P><P><b>상영시간:</b>2시간<h3>줄거리</h3>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</P></div>
            </div>
            <div class=movie_list><img src="./images/movie4.JPG" >
                <div class="movieMention"><h2>데드풀</h2><p><b>장르:</b>SF</p><P><b>연령:</b>12세</P><P><b>상영시간:</b>2시간<h3>줄거리</h3>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</P></div>
            </div>
        </div>
        </fieldset>
    </div>
</body>

</html>