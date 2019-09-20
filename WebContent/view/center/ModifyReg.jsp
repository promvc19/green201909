<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="/mvcProj/center/notice/Modify">
	<table border="" width="1000px">
		<tr>
		<td width="500px" colspan="2">
			<jsp:include page="../inc/top.jsp"/>
		</td>
		</tr>
		<tr>
			<td width="100px" style="padding-left: 100px; padding-right: 100px;">제목</td>
			<td width="300px" style="padding-left: 100px; padding-right: 100px;"><input type="text" value="<%=request.getParameter("title") %>" readonly="readonly"/></td>
		</tr>
		<tr>
			<td width="100px" style="padding-left: 100px; padding-right: 100px;">내용</td>
			<td width="300px" style="padding-left: 100px; padding-right: 100px;"><input type="text" name="content"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="수정" /></td>
		</tr>
		<tr>
		<td width="500px" colspan="2">
			<jsp:include page="../inc/bottom.jsp"/>
		</td>
	</tr>
	</table>
	<input type="hidden" value="<%=request.getParameter("id") %>" name="id" />
</form>