<%@page import="entity.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="refresh" content="1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<%
		List<User> lists = (ArrayList) application.getAttribute("user_count");
	%>
	当前在线人数：<%=lists.size()%>
	<br>
	<%
		for (User user : lists) {
			out.print(user.getUsername());
			out.print("<br>");
		}
	%>

</body>
</html>