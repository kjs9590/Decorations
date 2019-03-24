<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <%@page import="Model.MovieRegisterDTO,java.util.*"%>
  <% MovieRegisterDTO mRdto=(MovieRegisterDTO)request.getAttribute("mRdto"); %>
  <% String img[]=mRdto.getMovieStoreimg().split("-"); %>
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
	<link href="${pageContext.request.contextPath }/CSS/MovieDetail.css" rel="stylesheet" type="text/css">
    <link href="../CSS/header.css" rel="stylesheet" type="text/css">

</head>

<body>
	<jsp:include page="../include/header.jsp" />
	<!-- Contents -->
	<div id="contents">
		<div id="contents_detiail">
		<div id=title>��ȭ��</div>
		<div id=info>
			<div id="movie_imgbox">
				<div id="movie_img"><img src="Movie/upfile1/<%=img[0] %>"></div>
			</div>
			<div id="movie_infobox">
				<div class="movie_info">
				<h1 style="font-size: 35px"><strong><%=mRdto.getMovieTitel() %></strong> </h1>
			
				</div>
				<div class="movie_info">
					<p>���� : �ֳ� ���� , ���̾� �÷� </p>
					<p>��� : �긮 �� , �繫�� L. �轼 , �� �൨�� , �ֵ� ��</p>
					<p>�帣 : <%=mRdto.getMovieKind() %>/<%=mRdto.getMovieAge() %></p>
					<p>�ð� : <%=mRdto.getMovieTime() %></p>
				</div>
			
			</div>
		</div>

		<div id=story>
			<p><strong>��ȭ �ٰŸ�</strong></p>
			<%=mRdto.getMovieInform()%>
		</div>
		<div class="cut_img">
		    <div id="mainImg"><img src="Movie/upfile1/<%=img[0] %>" id="imgchange"></div>
			<div id=cut_subject>��ƿ��</div>
			<%for(int i=0; i<img.length; i++){ %>
			<div id=cut_mainimg ><img src="Movie/upfile1/<%=img[i] %>" onclick="imgChange(this.src)"></div>
			<%} %>
		</div>
		<script type="text/javascript">
		
		 function imgChange(a){
			 var img=a.split("/");
			document.getElementById("imgchange").src="Movie/upfile1/"+img[6];
			   }
		</script>
	</div>
	</div>
</body>

</html>