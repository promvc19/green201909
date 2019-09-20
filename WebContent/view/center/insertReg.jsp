<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.tu{ 
	padding: 10px;
}
</style>
<body>
<form action="/mvcProj/center/notice/Insert">
		<table border=""  width="1000px">
		<tr>
		<td width="500px" colspan="2" >
			<jsp:include page="../inc/top.jsp"/>
		</td>
		</tr>
		<tr>
			<td width="80px" class="tu">작성자</td>
			<td class="tu"><input type="text" name="pname" /></td>
		</tr>
		<tr>
			<td width="80px" class="tu">제목</td>
			<td class="tu"><input type="text" name="title"  /></td>
		</tr>
		<tr>
			<td width="80px" class="tu">내용</td>
			<td class="tu"><input type="text" name="content" /></td>
		</tr>
		<tr >
			<td colspan="2" align="right" class="tu"><input type="submit" value="작성하기" />
			<a href="/mvcProj/center/notice/List">목록</a>
			</td>
			
		</tr>
	
		<tr>
		<td>
			<jsp:include page="../inc/bottom.jsp"/>
		</td>
	</tr>
</table>	
</form>
</body>
</html>