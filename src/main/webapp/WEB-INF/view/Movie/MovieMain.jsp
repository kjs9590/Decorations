<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <!--薦鯉 竺舛-->
    <title>
        五昔
    </title>
    <!-- 奄沙 竺舛 -->
    <meta name="viewport" content="width = device-width, initial-scale = 1.0, 
	maximum-scale = 1.0 minimum-scale = 1.0">
    <!--Jquery竺舛-->
    <script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <!--肉闘竺舛-->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <!-- css 旋遂 : font-family: 'Do Hyeon', sans-serif; -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <!-- css 旋遂 : font-family: 'Noto Sans KR', sans-serif; -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR" rel="stylesheet">
    <!-- css 旋遂 : font-family: 'Noto Serif KR', serif; -->
    <!--css 竺舛(奄沙葵)-->
  
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
       <div class="click_box"><button class="prev">��</button></div>
        <div id="ad_img">
            <p><img src="./images/Mov1.jpg" onclick="location.href='#'"></p>
        </div>
        <div class="click_box"><button class="next">��</button></div>
       
    </div>
     <div class="theraterSerch">
      <div id="therater">慎鉢淫 達奄</div>
      <h3>慎鉢淫 曽嫌: <select style="height: 30px; width: 50%;">
          <option>五亜酵什</option>
          <option>茎汽獣革</option>
          <option>CGV</option>
    </select></h3>
    <h3>慎鉢淫 走蝕: <select style="height: 30px; width: 50%;" onchange="area(this.value)">
            <option>辞随</option>  
            <option>井奄</option>  
            <option>昔探</option>  
            <option>悪据</option>  
            <option>薦爽</option>  
            <option>企穿</option>  
            <option>室曽</option>  
            <option>中栽</option>  
            <option>中害</option>  
            <option>採至</option>  
            <option>随至</option>  
            <option>井害</option>  
            <option>企姥</option>
            <option>井栽</option>  
            <option>韻爽</option>  
            <option>穿害</option>
            <option>穿栽</option>  
      </select></h3>
      <h3>慎鉢淫 識澱: <select style="height: 30px; width: 50%;">
            <option>辞随</option>  
            <option>井奄</option>  
            <option>昔探</option>  
      </select></h3>

     </div>
     <div class="footer">
            <fieldset>
                <legend>慎鉢淫</legend>
           <div id="theaterName"><img src="dd"></div>
            <h3>慎鉢淫 戚硯:</h3>
            <h3>慎鉢淫 爽社:</h3>
           <h3>慎鉢淫 穿鉢腰硲:</h3>
           <fieldset>
                <legend>雌慎 慎鉢</legend>
           
           <div id=nowplaying>
                <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>薦 1淫</h4>
                <h5>雌慎 慎鉢: 銚鴇原鷺</h5>
                <h5>雌慎 獣娃: 2獣</h5>
                <h5>害精 疎汐: 50汐</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>薦 1淫</h4>
                <h5>雌慎 慎鉢: 銚鴇原鷺</h5>
                <h5>雌慎 獣娃: 2獣</h5>
                <h5>害精 疎汐: 50汐</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>薦 1淫</h4>
                <h5>雌慎 慎鉢: 銚鴇原鷺</h5>
                <h5>雌慎 獣娃: 2獣</h5>
                <h5>害精 疎汐: 50汐</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>薦 1淫</h4>
                <h5>雌慎 慎鉢: 銚鴇原鷺</h5>
                <h5>雌慎 獣娃: 2獣</h5>
                <h5>害精 疎汐: 50汐</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>薦 1淫</h4>
                <h5>雌慎 慎鉢: 銚鴇原鷺</h5>
                <h5>雌慎 獣娃: 2獣</h5>
                <h5>害精 疎汐: 50汐</h5>
                </div>
                
               </div>
            </div>   
        </fieldset>    
        
        </fieldset>
        </div>
    
     <div class="footers">
        <fieldset>
            <legend>鯵裟慎鉢</legend>
        <div id=nowplaying>
            <div class=movie_list><img src="./images/movie1.JPG" >
            <div class="movieMention"><h2>汽球熱</h2><p><b>舌牽:</b>SF</p><P><b>尻敬:</b>12室</P><P><b>雌慎獣娃:</b>2獣娃<h3>匝暗軒</h3>しししししししししししししししししししししししししししししししししし</P></div>
           </div>
            <div class=movie_list><img src="./images/movie2.JPG" >
                <div class="movieMention"><h2>汽球熱</h2><p><b>舌牽:</b>SF</p><P><b>尻敬:</b>12室</P><P><b>雌慎獣娃:</b>2獣娃<h3>匝暗軒</h3>しししししししししししししししししししししししししししししししししし</P></div>
            </div>
            <div class=movie_list><img src="./images/movie3.JPG" >
                <div class="movieMention"><h2>汽球熱</h2><p><b>舌牽:</b>SF</p><P><b>尻敬:</b>12室</P><P><b>雌慎獣娃:</b>2獣娃<h3>匝暗軒</h3>しししししししししししししししししししししししししししししししししし</P></div>
            </div>
            <div class=movie_list><img src="./images/movie4.JPG" >
                <div class="movieMention"><h2>汽球熱</h2><p><b>舌牽:</b>SF</p><P><b>尻敬:</b>12室</P><P><b>雌慎獣娃:</b>2獣娃<h3>匝暗軒</h3>しししししししししししししししししししししししししししししししししし</P></div>
            </div>
        </div>
        </fieldset>
    </div>
</body>

</html>