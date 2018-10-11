<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/css.css" type="text/css">
<div class="col-sm-2 sidenav">
 	<c:if test="${sessionScope.user_id != null}">
		<h5>${sessionScope.user_id}님 환영합니다.</h5>
 	</c:if>
	<br/>
	<div class="well">
		<p>공지사항</p>
		<p>1. 
		
		<c:forEach items="${list2}" var="dto">
			<tr><td>${dto.notice_title}</td></tr>>
		</c:forEach>
		
		</p>
		<p>2. 미리보기</p>
		<p>3. 미리보기</p>
	</div>
	<div class="well">
		<p>커뮤니티</p>
		<p>1. 미리보기</p>
		<p>2. 미리보기</p>
		<p>3. 미리보기</p>
	</div>
</div>
