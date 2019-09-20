<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertForm</title>

<script>


</script>
</head>
<body>
<form action="insertReg.jsp">
	<table border="">
		<tr>
			<td>id</td><td><input type="text" name="id" /></td>
		</tr>
		<tr>
			<td>pw</td><td><input type="text" name="pw" /></td>
		</tr>
		<tr>
			<td>name</td><td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="가입" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>