<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>处理消息页面</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String msg = request.getParameter("msg");
	User user = new User(((User)session.getAttribute("user")).getUsername(),msg);
	List<User> lists = new ArrayList();
	if((ArrayList)application.getAttribute("user_lists") != null){
		lists = (ArrayList)application.getAttribute("user_lists");
	}
	lists.add(user);
	application.setAttribute("user_lists", lists);
	response.sendRedirect("chatInput.jsp");
%>

</body>
</html>