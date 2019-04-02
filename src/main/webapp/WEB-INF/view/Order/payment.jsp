<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#payment{
border: solid 1px gray;
height: 232px;
border-radius: 3px;
box-shadow: 0 3px 7px rgba(0, 0, 0, .2);
background-color: white;
}
.pay{
border: solid 1px gray;
height: 32px;
padding-top: 12px;
padding-left: 2%;
border-radius: 3px;
box-shadow: 0 3px 7px rgba(0, 0, 0, .2);
background-color: white;
}
.name{
float: left;
height: 32px;

}

</style>
</head>
<body>
<div id="payment">
<div class="pay"> <div class="name"><b>주문번호:</b> ${pdto.orderNum}</div></div>
<div class="pay"><div class="name"><b>결제가격:</b> ${pdto.payPrice }</div> </div>
<div class="pay"><div class="name"><b>카드사명:</b> ${pdto.cardName }</div></div>
<div class="pay"><div class="name"><b>카드번호:</b> ${pdto.cardNum }</div></div>
<div class="pay"><div class="name"><b>할부기간:</b> ${pdto.cardTerm }</div></div></div>
</html>

