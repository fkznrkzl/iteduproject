<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="col-sm-8 text-left">
<table border="1" cellspacing="0">
     <tr class='even'>
         <td width="50px" align="center">mcontent</td>
         <td align="center">writer</td>
         <td align="center">mdate</td>
     </tr>
     <!-- result는 contoller의 addObject로 부터 가져온다. -->
     <c:forEach items="${result}" var="dto">
         <tr class='even'>
             <td>${dto.mcontent}</td>
             <td>${dto.writer}</td>
             <td>${dto.mdate}</td>    
         </tr>
     </c:forEach>
 </table>
</div>