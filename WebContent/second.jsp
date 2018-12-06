<%@page import="java.util.Date"%>

<%-- jsp的指令
<%@

指令名称  属性
%>
1.page指令  对当前界面的属性设置
2.include指令
3.taglib指令

page指令属性：
language：语言
contenttype：相应地编码格式和文本类型
pageEncoding：页面编码格式
buffer：jspWriter缓冲区 默认为8K
errorpage：错误界面
import:导包
session:界面是否提供session
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.html" %>
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
	 
	 //int b=10/0;
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