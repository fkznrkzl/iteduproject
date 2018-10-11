<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<div class="col-sm-8 text-left">
	<form method="post" action="/admin_server/result">
		<table border="1" cellspacing="0">
			<tr class='even'>
				<td>제목</td>
				<td>작성내용</td>
				<td>작성일자</td>
				<td></td>
			</tr>
			<tr class='even'>
				<td><input type="text" name="writer" id="writer"></td>
				<td><input type="text" name="mcontent" id="mcontent"></td>
				<td><input type="text" name="mdate" id="mdate"></td>
				<td colspan="2" align="center"><input type="submit" value="추가">
				</td>
			</tr>
			<c:forEach items="${result}" var="dto">
				<tr class='even'>
					<td>${dto.writer}</td>
					<td>${dto.mcontent}</td>
					<td>${dto.mdate}</td>
					<td><input type="button" value="수정" onclick=""> <input
						type="button" value="삭제"></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</div>