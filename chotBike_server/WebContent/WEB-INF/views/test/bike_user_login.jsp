<%@page import="javax.websocket.Session"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<script>
    $(document).ready(function(){
        $("#btnLogin").click(function(){
            // 태크.val() : 태그에 입력된 값
            // 태크.val("값") : 태그의 값을 변경 
            var userId = $("#user_id").val();
            var userPw = $("#user_pwd").val();
            if(userId == ""){
                alert("아이디를 입력하세요.");
                $("#user_id").focus(); // 입력포커스 이동
                return; // 함수 종료
            }
            if(userPw == ""){
                alert("아이디를 입력하세요.");
                $("#user_pwd").focus();
                return;
            }
            // 폼 내부의 데이터를 전송할 주소
            document.form1.action="loginCheck"
            // 제출
            document.form1.submit();
        });
    });
</script>
<div class="col-sm-8 text-left">
	<h1 align="center">회원로그인 페이지</h1>
	    <form name="form1" method="post">
        <table width="50%;" class="center">
            <tr>
                <td>아이디</td>
                <td><input name="user_id" id="user_id" class="form-control" placeholder="아이디 입력"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="user_pwd" id="user_pwd" class="form-control" placeholder="비밀번호 입력"></td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <button type="button" id="btnLogin" class="btn btn-primary">로그인</button>
                <c:if test="${msg == 'failure'}">
                    <div style="color: red">
                        아이디 또는 비밀번호가 일치하지 않습니다.
                    </div>
                </c:if>
                <c:if test="${msg == 'logout'}">
                    <div style="color: red">
                        로그아웃되었습니다.
                    </div>
                </c:if>
                <c:if test="${msg == 'success'}">
                	session.setAttribute("user_id", userId);
                </c:if>
                </td>
            </tr>
        </table>
    </form>
</div>
