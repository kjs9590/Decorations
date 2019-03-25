<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%@page import="Model.MovieRegisterDTO,Model.ChargerDTO,java.util.*"%>    
<% ChargerDTO Charge = (ChargerDTO)session.getAttribute("chargerDTO");%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
          <%if(Charge !=null){ %>
           <fieldset>
                <legend style="font-size: 30px;">상영관</legend>
           
           <div id=nowplayings>
                <div class=screen_list><img src="./images/screen.jpg" >
                <div class="movieMention"><h4>상영관 등록</h4>
                <form action="ScreenRagister" method="post" enctype="multipart/form-data">
                <h5><input type="text" placeholder="상영관 이름" name="screenName"></h5>
                <h5> <input type="number"placeholder="좌석행" name="screenRow" style="width: 55px;">
                <input type="number"placeholder="좌석열" name="screenColum" style="width: 55px; margin-left: -2px;"></h5>
                <h5><select name="screenKind" style="height: 25px;">
                <option>상영관 종류</option>
                <option>일반상영관</option>
                <option>스페셜상영관</option>
                </select></h5>
                <h5><select name="screenPlus" style="height: 25px;">
                <option>추가요금</option>
                <option>10000</option>
                <option>15000</option>
                <option>20000</option>
                </select></h5>
                <h5><input type="file" name="screenFile" value="상영관 이미지"></h5>
                <input type="hidden" value="${tRdto.theaterNum }" name="theaterNum" >
                <input type="submit" value="등록하기" style="height:50px;cursor: pointer; ">
                </form>
                </div>
         </div>
            
             <c:forEach items="${sList}" var="sList">
                <div class=screen_list><img src="Movie/upfile2/${sList.screenStoreimg }" >
                <div class="movieMention"><h4>${sList.screenName} </h4>
                <h5>${sList.screenKind}</h5>
                <h5>좌석수: ${sList.screenRow*sList.screenColumn }</h5>
                <h5>추가요금: +${sList.screenPlus }</h5>
                <h5><input type="button" style="height: 50px; width: 50%; margin-top: 131px; margin-bottom: -11px; cursor: pointer;" value="영화등록" ></h5>
                </div></div>
             
            </c:forEach>
             </div>
        </fieldset>    
        <%}else{ %>
           <fieldset>
                <legend>상영영화</legend>
            
           <div id=nowplaying>
                <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>제 1관</h4>
                <h5>상영 영화: 캡틴마블</h5>
                <h5>상영 시간: 2시</h5>
                <h5>남은 좌석: 50석</h5>
                </div>
           </div>
              
            </div>   
            <div id=nowplaying>
                <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>제 1관</h4>
                <h5>상영 영화: 캡틴마블</h5>
                <h5>상영 시간: 2시</h5>
                <h5>남은 좌석: 50석</h5>
                </div>
           </div>
              
            </div>   
            <div id=nowplaying>
                <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>제 1관</h4>
                <h5>상영 영화: 캡틴마블</h5>
                <h5>상영 시간: 2시</h5>
                <h5>남은 좌석: 50석</h5>
                </div>
           </div>
              
            </div>   
        </fieldset>    
        <%} %>
        </fieldset>
        </div>
</body>
</html>