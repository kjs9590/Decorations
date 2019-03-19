<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="Model.MemberDTO"%>
<% 	MemberDTO memberDTO = (MemberDTO)session.getAttribute("memberDTO");
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER UPDATE</title>
<style></style>
<script></script>
<link href="https://fonts.googleapis.com/css?family=Jua|Play"
	rel="stylesheet">
<!--폰트-->
<!--body { font-family: "Jua", sans-serif;} -->
<link href="${pageContext.request.contextPath }/CSS/member_update.css" rel="stylesheet" type="text/css">
<link href="../CSS/header.css" rel="stylesheet" type="text/css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function (data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if (data.userSelectedType === 'R') {
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if (data.buildingName !== '' && data.apartment === 'Y') {
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if (extraAddr !== '') {
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;

                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
    </script>
</head>

<!-- 헤더 인클루드-->
<body>
	<jsp:include page="/WEB-INF/view/include/header.jsp" />
	<div class="wrap_mypage">
		<div class="page_menu">
			<ul>
				<li><a href="">회원정보보기</a></li>
				<li><a href="">주문내역</a></li>
				<li><a href="">결제내역</a></li>
			</ul>
		</div>
		<form action="MemberInfo" method="post">
			<div class="member_info">
				<table>
					<tr>
						<td id="sub">아이디</td>
						<td id="con"><%=memberDTO.getMemberId() %></td>
					</tr>
					<tr>
						<td id="sub">비밀번호</td>
						<td id="con"><input type="password" class="textbox"
							placeholder="   비밀번호" value="<%=memberDTO.getMemberPw() %>"></td>
					</tr>
					<tr>
						<td id="sub">비밀번호 확인</td>
						<td id="con"><input type="password" class="textbox"
							placeholder="   비밀번호확인" value="<%=memberDTO.getMemberPw() %>"></td>
					</tr>
					<tr>
						<td id="sub">이메일</td>
						<td id="con"><input type="email" id="email" name="email"
							class="textbox" value="<%=memberDTO.getMemberMail() %>"></td>
					</tr>
					<tr>
						<td id="sub">성별</td>
						<td id="con">
						<input type="radio" class="gender_radio" value="남" name="gender" <%if(memberDTO.getMemberGender().equals("남")){ %>
						checked <%} %>/>남자
						<input type="radio" class="gender_radio" value="여" name="gender" <%if(memberDTO.getMemberGender().equals("여")){ %>
						checked <%} %> />여자
						</td>
					</tr>
					<tr>
						<td id="sub">연락처</td>
						<td id="con"><select name="start_num" class="phone_text">
								<option value="010" selected="selected">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
								<option value="0139">0139</option>
								<% String phone = memberDTO.getMemberTell(); %>
						</select> <span>&nbsp-</span> 
						<input type="text" class="phone_text" value="<%=phone.substring(3,7)%>"> - <input type="text" class="phone_text" value="<%=phone.substring(7,11)%>"></td>
					</tr>
					<tr>
						<td id="sub">주소</td>
						<td id="con"><input type="text" id="sample6_postcode" placeholder="우편번호"> 
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" class="textbox" name="sample6_address" id="sample6_address" placeholder="   주소"><br> 
						<input type="text" class="textbox" name="sample6_detailAddress" id="sample6_detailAddress" placeholder="   상세주소"> 
						<input type="text" class="textbox" name="sample6_extraAddress" id="sample6_extraAddress" placeholder="참고항목"></td>
					</tr>
					<tr>
						<th colspan="2">
							<p>
								이벤트메일링수신동의여부<input type="checkbox" class="checkbox">
							</p>
						</th>
					</tr>

				</table>
				<div id="btn">
					<button type="submit" id="update_btn">회원정보수정</button>
				</div>
			</div>
		</form>
	</div>
</body>

</html>