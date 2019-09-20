<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table border="" width ="1000px">
	<tr align="center">
		<td width="50px">번호</td>
		<td>제목</td>
		<td width="120px">작성자</td>
		<td width="270px">작성일</td>
		<td width="70px">조회수</td>
	</tr>
<c:forEach var="dto" items="${data }" varStatus="no">	
	<tr>
		<td>${no.index+1 }</td>
		<td><a href="Detail?id=${ dto.id}" style="text-decoration: none;">${dto.title}</a></td>
		<td>${dto.pname }</td>
		<td>${dto.regdate }</td>
		<td>${dto.cnt }</td>
	</tr>
</c:forEach>
	<tr>
		<td colspan="5" align="right"><a href="/mvcProj/view/center/insertReg.jsp">작성</a></td>
	</tr>
</table>