<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
<style>
#contentForm {
	width: 100%;
	margin: 0 auto;
	padding-top: 5%;
	text-align: center;
}
div {
	text-align: center;
}
.table>thead>tr>th, .table>tbody>tr>th {
	background-color: #fffdf9;
	text-align: center;
	/*margin: 0 auto;*/
	/*width: 100%;*/
}
</style>
<div class="col-sm-8 text-left">
	<form action="community/insert" method="post">
		<div id="contentForm">
			<input type="hidden" name="pageNum" value="${pageNum}"> <input
				type="hidden" name="articleNumber" value="${article.articleNumber}">

			<div class="input-group input-group-sm" role="group" aria-label="..." style="margin: auto;">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th width="30%">글쓴이</th>
							<td width="70%">${id}</td>
						</tr>
						<tr>
							<th style="padding-bottom: 15px">제목</th>
							<td><input type="text" name="title" value="${article.title}"
								class="form-control" aria-describedby="basic-addon1"></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2"><textarea class="form-control" rows="20"
									name="content">${article.content}</textarea></td>
						</tr>
						<tr>
							<th style="padding-top: 15px">첨부파일</th>
							<td><input type="file" class="btn btn-default"
								name="fileName"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="btn-group btn-group-sm" role="group" aria-label="...">
				<input type="submit" class="btn btn-default" value="글쓰기"> 
				<input type="button" class="btn btn-default" value="취소">
			</div>
		</div>
	</form>
</div>