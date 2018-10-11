<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인페이지</title>
<script>
	jQuery().ready(function() {
		$("#btnLogin").click(function() {
			// 태크.val() : 태그에 입력된 값
			// 태크.val("값") : 태그의 값을 변경 
			var idv = $("#idv").val();
			var pwdv = $("#pwdv").val();
			if (idv == "") {
				alert("아이디를 입력하세요.");
				$("#idv").focus(); // 입력포커스 이동
				return; // 함수 종료
			}
			if (pwdv == "") {
				alert("아이디를 입력하세요.");
				$("#pwdv").focus();
				return;
			}
			// 폼 내부의 데이터를 전송할 주소
			document.form1.action = "loginCheck"
			// 제출
			document.form1.submit();
		});
	});
</script>
</head>
<body>
	<h2>로그인</h2>
	<form name="form1" method="post">
		<table border="1" width="400px">
			<tr>
				<td>아이디</td>
				<td><input name="idv" id="idv"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwdv" id="pwdv"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="button" id="btnLogin">로그인</button> 
					<c:if
						test="${msg == 'failure'}">
						<div style="color: red">아이디 또는 비밀번호가 일치하지 않습니다.</div>
					</c:if> 
					<c:if test="${msg == 'logout'}">
						<div style="color: red">로그아웃되었습니다.</div>
					</c:if>
					<c:if test="${msg == 'success'}">
						<script>
						sessionscope.setAttribute("user_id", "idv");
						</script>
					</c:if>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
