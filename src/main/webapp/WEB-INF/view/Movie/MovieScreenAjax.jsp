<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
  
 
</head>
<body>
    <div class="footer">
            <fieldset>
                <legend style="font-size: 40px;">${tRdto.theaterKind}��ȭ��</legend>
           <div id="theaterName"><img src="dd"></div>
           <div id="screenMention"> <h2> ${tRdto.theaterName}</h2>
            <h3>�ּ�: ${tRdto.theaterAdd}</h3>
           <h3>TELL: ${tRdto.theaterTell}</h3></div>
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
</body>
</html>