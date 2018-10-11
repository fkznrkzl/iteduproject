<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
.choice{
	font-weight:bold;
}
</style>
<div class="col-sm-8 text-left">

    <div style="width: 100%; text-align: right;">
		<a href="javascript:goPage(${param.firstPageNo})" class="first"> << &nbsp;&nbsp;&nbsp;</a> 
		<a href="javascript:goPage(${param.prevPageNo})" class="prev"> <   &nbsp;&nbsp;&nbsp;</a>
		<span> <c:forEach var="i" begin="${param.startPageNo}"
				end="${param.endPageNo}" step="1">
				<c:choose>
					<c:when test="${i eq param.pageNo}">
						<a href="javascript:goPage(${i})" class="choice">${i}</a>
					</c:when>
					<c:otherwise>
						<a href="javascript:goPage(${i})">${i}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</span> <a href="javascript:goPage(${param.nextPageNo})" class="next"> > &nbsp;&nbsp;&nbsp;</a> 
		<a href="javascript:goPage(${param.finalPageNo})" class="last"> >> </a>
	</div>
<!-- 	<div class="paginate" style="text-align: center; margin: auto;"> -->
<%-- 		<a href="javascript:goPage(${param.firstPageNo})" class="first">처음 --%>
<%-- 			페이지</a> <a href="javascript:goPage(${param.prevPageNo})" class="prev">이전 --%>
<%-- 			페이지</a> <span> <c:forEach var="i" begin="${param.startPageNo}" --%>
<%-- 				end="${param.endPageNo}" step="1"> --%>
<%-- 				<c:choose> --%>
<%-- 					<c:when test="${i eq param.pageNo}"> --%>
<%-- 						<a href="javascript:goPage(${i})" class="choice">${i}</a> --%>
<%-- 					</c:when> --%>
<%-- 					<c:otherwise> --%>
<%-- 						<a href="javascript:goPage(${i})">${i}</a> --%>
<%-- 					</c:otherwise> --%>
<%-- 				</c:choose> --%>
<%-- 			</c:forEach> --%>
<%-- 		</span> <a href="javascript:goPage(${param.nextPageNo})" class="next">다음 --%>
<%-- 			페이지</a> <a href="javascript:goPage(${param.finalPageNo})" class="last">마지막 --%>
<!-- 			페이지</a> -->
<!-- 	</div> -->
</div>