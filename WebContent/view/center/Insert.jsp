<%@page import="java.util.ArrayList"%>
<%@page import="model.CenterDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border=""  width="1000px">

	
	<tr>
		<td>제목</td>
		<td>${data.title }</td>
	</tr>
	<tr>
		<td>작성자</td>
		<td>${data.pname }</td>
	</tr>
	<tr>
		<td>내용</td>
		<td>${data.content }</td>
	</tr>
	<tr>
		<td colspan="2"><a href="List" style="text-decoration: none">목록</a></td>
		
	</tr>

</table>

</body>
</html>