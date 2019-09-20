<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.st{
	padding:10px;
}
</style>
<table border="" width="800px" style="margin-left: 100px; margin-right: 100px; padding-top: 50px">

	<tr>
		<td>작성자</td>
	<td>${data.pname}</td>
	</tr>
	<tr>
		<td>등록시간</td>
	<td>${data.regdate}</td>
	</tr>
	<tr>
		<td>제  목</td>
	<td>${data.title}</td>
	</tr>
	<tr>
		<td colspan="2" align="center">내  용</td>
	</tr>
	<tr>
		<td colspan="2">${data.content }</td>
	</tr>
	<tr>
		<td colspan="2" align="right"><a href="List" style="text-decoration: none;">목록</a>
		<a href="/mvcProj/view/center/ModifyReg.jsp?id=${data.id }&title=${data.title}"
		 style="text-decoration: none;">수정</a>
		 <a href="Delete?id=${data.id }" style="text-decoration: none;">삭제</a>
		 </td>
		 
	</tr>

</table>	
	