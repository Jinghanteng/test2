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
	<%-- 
	jsp写Java代码的三种语法
	1.jsp声明<%! %>  放在Java类里面     只执行一次
	只能写声明变量，声明方法，不能写代码块
	2.jsp脚本<% %>   service（）方法里面      每次运行都执行一次
		只能写代码片段，不能定义方法
		3.jsp表达式<%= %>   方法的参数可以掉方法但必须有返回值
		
	 --%>
	 
	 <!-- jsp执行原理：
	 当向第一次向jsp文件发送请求的时候，服务器（jsp引擎）会将jsp文件装换成Java文件再把Java文件编译成。class文件。最终执行的是编译后的。class文件
	  
	  jsp本质上就是一个servlet
	  
	  -->
	 
	 <%!
	 int m=20;
	 int count=0;
	 Date date=new Date();
	  public void test(){

	  }
	 
	 %>
	
	 
	 <%
	 count++;
	 int a=20;
	 test();
	 if(m>10){
		 System.out.println(m);
	 }
	 
	 %>
	 
	 <%=count%>
	
</body>
</html>