<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <!--���� ����-->
    <title>
        ����
    </title>
    <!-- �⺻ ���� -->
    <meta name="viewport" content="width = device-width, initial-scale = 1.0, 
	maximum-scale = 1.0 minimum-scale = 1.0">
    <!--Jquery����-->
    <script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <!--��Ʈ����-->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <!-- css ���� : font-family: 'Do Hyeon', sans-serif; -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <!-- css ���� : font-family: 'Noto Sans KR', sans-serif; -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR" rel="stylesheet">
    <!-- css ���� : font-family: 'Noto Serif KR', serif; -->
    <!--css ����(�⺻��)-->
  
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
      <div id="therater">��ȭ�� ã��</div>
      <h3>��ȭ�� ����: <select style="height: 30px; width: 50%;">
          <option>�ް��ڽ�</option>
          <option>�Ե��ó�</option>
          <option>CGV</option>
    </select></h3>
    <h3>��ȭ�� ����: <select style="height: 30px; width: 50%;" onchange="area(this.value)">
            <option>����</option>  
            <option>���</option>  
            <option>��õ</option>  
            <option>����</option>  
            <option>����</option>  
            <option>����</option>  
            <option>����</option>  
            <option>���</option>  
            <option>�泲</option>  
            <option>�λ�</option>  
            <option>���</option>  
            <option>�泲</option>  
            <option>�뱸</option>
            <option>���</option>  
            <option>����</option>  
            <option>����</option>
            <option>����</option>  
      </select></h3>
      <h3>��ȭ�� ����: <select style="height: 30px; width: 50%;">
            <option>����</option>  
            <option>���</option>  
            <option>��õ</option>  
      </select></h3>

     </div>
     <div class="footer">
            <fieldset>
                <legend>��ȭ��</legend>
           <div id="theaterName"><img src="dd"></div>
            <h3>��ȭ�� �̸�:</h3>
            <h3>��ȭ�� �ּ�:</h3>
           <h3>��ȭ�� ��ȭ��ȣ:</h3>
           <fieldset>
                <legend>�� ��ȭ</legend>
           
           <div id=nowplaying>
                <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>�� 1��</h4>
                <h5>�� ��ȭ: ĸƾ����</h5>
                <h5>�� �ð�: 2��</h5>
                <h5>���� �¼�: 50��</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>�� 1��</h4>
                <h5>�� ��ȭ: ĸƾ����</h5>
                <h5>�� �ð�: 2��</h5>
                <h5>���� �¼�: 50��</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>�� 1��</h4>
                <h5>�� ��ȭ: ĸƾ����</h5>
                <h5>�� �ð�: 2��</h5>
                <h5>���� �¼�: 50��</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>�� 1��</h4>
                <h5>�� ��ȭ: ĸƾ����</h5>
                <h5>�� �ð�: 2��</h5>
                <h5>���� �¼�: 50��</h5>
                </div>
                
               </div>
               <div class=screen_list><img src="./images/movie1.JPG" >
                <div class="movieMention"><h4>�� 1��</h4>
                <h5>�� ��ȭ: ĸƾ����</h5>
                <h5>�� �ð�: 2��</h5>
                <h5>���� �¼�: 50��</h5>
                </div>
                
               </div>
            </div>   
        </fieldset>    
        
        </fieldset>
        </div>
    
     <div class="footers">
        <fieldset>
            <legend>������ȭ</legend>
        <div id=nowplaying>
            <div class=movie_list><img src="./images/movie1.JPG" >
            <div class="movieMention"><h2>����Ǯ</h2><p><b>�帣:</b>SF</p><P><b>����:</b>12��</P><P><b>�󿵽ð�:</b>2�ð�<h3>�ٰŸ�</h3>��������������������������������������������������������������������</P></div>
           </div>
            <div class=movie_list><img src="./images/movie2.JPG" >
                <div class="movieMention"><h2>����Ǯ</h2><p><b>�帣:</b>SF</p><P><b>����:</b>12��</P><P><b>�󿵽ð�:</b>2�ð�<h3>�ٰŸ�</h3>��������������������������������������������������������������������</P></div>
            </div>
            <div class=movie_list><img src="./images/movie3.JPG" >
                <div class="movieMention"><h2>����Ǯ</h2><p><b>�帣:</b>SF</p><P><b>����:</b>12��</P><P><b>�󿵽ð�:</b>2�ð�<h3>�ٰŸ�</h3>��������������������������������������������������������������������</P></div>
            </div>
            <div class=movie_list><img src="./images/movie4.JPG" >
                <div class="movieMention"><h2>����Ǯ</h2><p><b>�帣:</b>SF</p><P><b>����:</b>12��</P><P><b>�󿵽ð�:</b>2�ð�<h3>�ٰŸ�</h3>��������������������������������������������������������������������</P></div>
            </div>
        </div>
        </fieldset>
    </div>
</body>

</html>