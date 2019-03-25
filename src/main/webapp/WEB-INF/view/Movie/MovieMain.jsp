<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Model.MovieRegisterDTO,Model.ChargerDTO,java.util.*"%>    
<%List <MovieRegisterDTO> mrdto=(List)request.getAttribute("Mrdto"); 
String img[];
%>
<% ChargerDTO Charge = (ChargerDTO)session.getAttribute("chargerDTO");%>
<!DOCTYPE html>
<html>
<%=Charge.getChargeNum() %>
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


<script type="text/javascript" src="../JS/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../JS/jquery.form.js"></script>   
<script src="JS/MovieMain.js"></script>

</head>

<body>
    <jsp:include page="../include/header.jsp" />
    <div id="contents">
       <div class="click_box"><button class="prev">��</button></div>
        <div id="ad_img">
            <p><img src="./images/movies0.jpg" onclick="location.href='#'"></p>
        </div>
        <div class="click_box"><button class="next">��</button></div>
       
    </div>
     <div class="theraterSerch">
      <div id="therater">��ȭ�� ã��</div>
      <h3>��ȭ�� ����: <select style="height: 30px; width: 50%;" id="TheaterKind">
          <option>��ȭ���� �������ּ���</option>
          <option>�ް��ڽ�</option>
          <option>�Ե��ó׸�</option>
          <option>CGV</option>
    </select></h3>
    <h3>��ȭ�� ����: <select style="height: 30px; width: 50%;" onchange="area(this.value)">
            <option>�������������ּ���</option>  
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
     
      <div id="movieAjax">
      <h3>��ȭ�� ����:
       <select style="height: 30px; width: 50%;">
            <option>�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�</option>  
           
      </select></h3></div>

     </div>
     <div id="movieScreen">
     <div class="footer">
            <fieldset>
                <legend>��ȭ��</legend>
           <h1>��ȭ�� ã�⸦ �������ּ���</h1>
           </fieldset>
            </div>   
      </div>
        
     <div class="footers">
        
        <fieldset>
            <legend>������ȭ</legend>
           
        <div id=nowplaying>
           <div id="movieregister">
           <%if(Charge !=null){ %><div class="movieBox"><a onclick="MovieRegister()">��ȭ���</a></div>
           <%}else{ %>
           <div class="movieBox">
           <select>
           <option>����</option>
           <option>��ü�̿밡</option>
           <option>12��</option>
           <option>15��</option>
           <option>19��</option>
           </select>
           
           </div>
           <div class="movieBox">
           <select>
           <option>�帣</option>
           <option>����</option>
           <option>SF</option>
           <option>�θǽ�</option>
           <option>�ڹ̵�</option>
           </select>
           </div>
          <%} %>
           </div>
            <%if(mrdto !=null){
            	for(int i=0; i<mrdto.size(); i++){
                img=mrdto.get(i).getMovieStoreimg().split("-");
            	%>
            <div class=movie_list><img src="Movie/upfile1/<%=img[0] %>" >
            <div class="movieMention"><h2><a href="movieDetail?no=<%=mrdto.get(i).getMovieNum()%>&img=<%=img[0]%>"><%=mrdto.get(i).getMovieTitel() %></a></h2><p><b>�帣:
            </b></p><P><b>����:</b> <%=mrdto.get(i).getMovieAge()%></P><P><b>�󿵽ð�:</b> <%=mrdto.get(i).getMovieTime()%>�ð�</div>
           </div>
          
          <%}} %>
         
        </div>
        </fieldset>
    </div>
<script>
$(function () {
    var n = 1
    $('.next').click(function () {
        n++
        if (n == 6) {
            n = 1
        }
        $('p img').attr('src', './images/movies'+n+'.jpg')
    })
    $('.prev').click(function () {
        n--
        if (n == 0) {
            n = 5
        }
        $('p img').attr('src', './images/movies' + n + '.jpg')
    })
})
	
</script>
</body>

</html>