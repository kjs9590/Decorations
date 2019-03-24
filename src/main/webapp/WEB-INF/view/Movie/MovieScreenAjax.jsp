<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
  
 
</head>
<body>
    <div class="footer">
            <fieldset>
                <legend style="font-size: 40px;">${tRdto.theaterKind}영화관</legend>
           <div id="theaterName"><img src="dd"></div>
           <div id="screenMention"> <h2> ${tRdto.theaterName}</h2>
            <h3>주소: ${tRdto.theaterAdd}</h3>
           <h3>TELL: ${tRdto.theaterTell}</h3></div>
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
</body>
</html>