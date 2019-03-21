<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style></style>
    <script></script>
    <link href="https://fonts.googleapis.com/css?family=Jua|Play" rel="stylesheet">
    <!--폰트-->
    <!--body { font-family: "Jua", sans-serif;} -->
    <link href="${pageContext.request.contextPath }/CSS/food_regist.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div class="wrap_food_reg">
       <form action="FoodRegister" enctype="multipart/form-data" method="POST">
            <p id="sub">음식 등록</p>
            <table class="table">
                <tr>
                    <td>음식 이름</td>
                    <td><input type="text" class="textbox" placeholder="    음식 이름"></td>
                </tr>
                <tr>
                    <td>음식 타입</td>
                    <td><input type="text" class="textbox" placeholder="    음식 타입"></td>
                </tr>
                <tr>
                    <td>음식 가격</td>
                    <td><input type="text" class="textbox" placeholder="    음식 지역"></td>
                </tr>
                <tr>
                    <td>음식 이미지</td>
                    <td> <input name="file" type="file" multiple="multiple" /></td>
                </tr>
                <tr>
                    <td>음식 정보</td>
                    <td><input type="text" class="textbox" placeholder="    음식 정보"></td>
                </tr>
            </table>
            <p></p>
            <p><input type="submit" id="regist_success" value="완료"></p>
        </form>
    </div>
</body>
</html>