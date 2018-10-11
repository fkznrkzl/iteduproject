<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<div class="col-sm-8 text-left">
    <div>
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="30%">제목</th>
            <th width="30%">내용</th>
            <th width="40%">작성일</th>
            <th width="10%">조회</th>
          </tr>
        </thead>
        <tbody>
			<c:forEach items="${list}" var="vo">
				<tr>
					<td>${vo.n_number}</td>
					<td><a href="view">${vo.n_title}</a></td>
					<td>${vo.n_content}</td>
					<td>${vo.n_enter_date}</td>
					<td>${vo.n_hit}</td>
				</tr>
			</c:forEach>
        </tbody>
      </table>
    </div>
</div>