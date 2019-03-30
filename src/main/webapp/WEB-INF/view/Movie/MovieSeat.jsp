<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="Model.*,java.util.*"%> 
 <%DateMovieDTO mrdto=(DateMovieDTO)request.getAttribute("dDto");%>  
  <%List <DateProductMovieDTO> sdTO=(List)request.getAttribute("sdTO");
  int a=0;
  %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link href="../CSS/header.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

</script>
<style type="text/css">
#all{
margin-top:200px;
height:auto;
width: 100%;

}
.seatMap{
float:left; 
width:65%;
height:auto;
margin-bottom: 5%;

}
.seats{
	width:10%; 
	float:left; 
	height:20px; 
	margin:1px; 
	background-color:#ccc; 
	border:1px solid #ccc;
	cursor: pointer;
}
.path{
	width:10%; 
	float:left; 
	height:20px; 
	margin:1px; 
	background-color:white; 
	border:1px solid #ccc;
}
#screen{
border:2px solid black;
height: 150px;
width: 60.6%;
float:left; 
text-align: center;
padding-top: 10%;
font-size: 40px;

}
 #titel{
 text-align: center;
 border: solid 2px;
 height:50px;
 padding-top: 4.5%;
 width: 100%;
 font-size: 25px;
 font-weight: bold;
 }
#choiceSeat{
float:left; 
border: solid 2px;
height: 507px;
width: 30%;
margin-top: -300px;
margin-bottom: 5%;
}
#seatValue{
height: 120px;
width: 100%;
font-size: 65px;
text-align: center;
margin-top: 8%;
}
</style>
</head>
<body>
   <jsp:include page="../include/header.jsp" />
   <div id="all">

		<div id="screen"><%=mrdto.getScreenName() %> 스크린</div>
		<div class="seatMap">

		<%if(mrdto !=null & sdTO !=null ) {%>
	    	<%for(int i=1; i<=mrdto.getScreenRow(); i++) {%>
		      <%for(int j=1; j<=mrdto.getScreenColumn(); j++){%>
		    	
		    	
		<div class="seats" id="seat_<%=i%>_<%=j%>" onclick="seat(<%=i%>,<%=j%>)"></div>
		<%a++;} %>
		<br>
		<%} %>
		
		<%} %>
	
	</div>
	<script type="text/javascript">
	var rowNum=0;
	var columnNum=0;
	var rows;
	var columns;
	function seat(row, column){
		
		 
		 columns=column;
		document.getElementById("seat_"+row+"_"+column).style.backgroundColor="rgb(137, 69, 248)";
		if(rowNum!=0&columnNum!=0){
			document.getElementById("seat_"+rowNum+"_"+columnNum).style.backgroundColor="#ccc";
		}
		rowNum=row;
		columnNum=column;
	
		if(row==1){
			row="A";
		}else if(row==2){
			row="B";
		}else if(row==3){
			row="C";
		}else if(row==4){
			row="D";
		}else if(row==5){
			row="E";
		}else if(row==6){
			row="F";
		}else if(row==7){
			row="G";
		}else if(row==8){
			row="H";
		}else if(row==9){
			
			row="J";
		}
		
		 document.getElementById("seatValue").innerHTML=row+"열"+columns;
		
		
	}
	row=0;
	</script>
	
	<div id="choiceSeat">
	<div id="titel"><%=mrdto.getMovieTitel() %></div>
	 <input type="date" name="optionDate"  style="width: 90%; height:60px; border: none;">
	 <select style="width: 100%; height:80px;">
	 <option>희망시간대를 선택해주세요</option>
	 <%for(int i=0;i<sdTO.size();i++){ %>
	 <option><%=mrdto.getScreenName() %> <%=mrdto.getMovieTitel() %> <%=sdTO.get(i).getMovieStart()%>분 영화관람</option>
	
	<%} %>
	 </select>
	 <div id="seatValue"></div>
	                 	<input type="hidden" name="foodName" class="check" value="0"> 
						<input type="hidden" name="productType" value="영화">
						<input type="hidden" name="productName" value="<%=mrdto.getMovieTitel() %>">
						<input type="hidden"  name="optionTime"  value="--">
						<input type="hidden" name="productNum" value="<%=mrdto.getProductNum() %>">
						<input type="hidden" name="optionPrice" value="<%=mrdto.getMoviePrice()+mrdto.getScreenPlus() %>">
						<input type="hidden" name="optionimg" value="<%=mrdto.getMovieStoreimg()%>">
						<input type="hidden" name="optionSeat" value="--">
						<input type="hidden" id="x" name="count" >
						<input type="hidden" id="x" name="categoryNum" value="1">
					
	 
	 <input type="submit" value="예약하기" style="height: 135px;width: 100%;">
	</div>
	 </div>
	
</body>
</html>