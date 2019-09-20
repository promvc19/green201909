<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	

	ArrayList<String> id = new ArrayList<String>();
	id.add("aaa");
	id.add("bbb");
	id.add("ccc");
	id.add("ddd");
	
	ArrayList<String> pw = new ArrayList<String>();
	pw.add("1111");
	pw.add("2222");
	pw.add("3333");
	pw.add("4444");
	
	ArrayList<String> name = new ArrayList<String>();
	
	name.add("장동건");
	name.add("장서건");
	name.add("장중건");
	name.add("장남건");
	


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertReg</title>
</head>
<body>
<table border="">
	<tr>
		<td><%=request.getParameter("id") %></td>
		<td><%=request.getParameter("pw") %></td>
		<td><%=request.getParameter("name") %></td>
	</tr>
</table>
</body>
</html>