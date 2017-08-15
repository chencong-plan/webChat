<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>处理页面</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	User user = new User();
	user.setUsername(username);
	session.setAttribute("user", user);
	response.sendRedirect("chat.jsp");
	
	//并且将用户信息放入application当中
	List<User> lists = new ArrayList();
	if(application.getAttribute("user_lists") != null){
		lists = (ArrayList)application.getAttribute("user_lists");
	}
	lists.add(user);
	application.setAttribute("user_lists", lists);
	
	//在线人数技术
	List userLists = new ArrayList();
	if(application.getAttribute("user_count") != null){
		userLists = (ArrayList)application.getAttribute("user_count");
	}
	userLists.add(user);
	application.setAttribute("user_count", userLists);
%>

</body>
</html>