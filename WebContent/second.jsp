<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jsp界面</h1>
	<!-- 显试注释 -->
	<%--隐式注释 --%>
	<!-- 
	jsp写Java代码的三种语法
	1.jsp声明<%! %>
	只能写声明变量，声明方法，不能写代码块
	2.jsp脚本<% %>
		只能写代码片段，不能定义方法
		3.jsp表达式<%= %>
		
	 -->
	 
	 <%!
	 int m=20;
	 Date date=new Date();
	  public void test(){
		  
	  }
	 
	 %>
	 
	 
	 <%
	 int a=20;
	 test();
	 if(m>10){
		 System.out.println(m);
	 }
	 
	 
	 
	 %>
	 
	 <%= 10+20%>
	
</body>
</html>