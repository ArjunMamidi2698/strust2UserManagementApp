<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="css/welcomePage.css"/> 
</head>
<body>
<s:if test="hasActionMessages()">
   <div class="welcome">
      <s:actionmessage/>
   </div>
</s:if>
<center>
	<h1>
		Hey!! <span class="logged-user"><s:property value="name" /></span>
		Welcome to learn struts2
	</h1>
	<br>
	<p><a href="<s:url action='learn'/>">StrutsTraining</a></p>
	<br>
	<p><a href="<s:url action='home'/>">Logout</a></p>
	<s:debug></s:debug>
</center>
</body>
</html>