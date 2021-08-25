<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Training</title>
</head>
<body>
<h1>Struts2 Training</h1>
<div>
<h4> Struts tags</h4>
<s:include value="/jsp/tags/tags.jsp"></s:include>
<br>
<h4> Custom Tags</h4>
<s:include value="/jsp/customTagTest.jsp"></s:include>
<p><a href="<s:url action='home'/>">Logout</a></p>
</div>
</body>
</html>