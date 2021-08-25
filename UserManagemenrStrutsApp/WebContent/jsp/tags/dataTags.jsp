<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data tags</title>
</head>
<body>
	<h1>Data tags</h1>
	<ul>
		<li>
			<h4>set tag:</h4>
			<s:set var="email" value="\"arjun@gmail.com\"" scope="application"></s:set>
			Default email = <s:property value="#application.email"/><br>
			Default email = <s:property value="#application['email']"/><br>
		</li>
		<li>
			<h4>property tag:</h4>
			Email: <s:property value="#application['email']"/><br>
			Name: <s:property value="name" default="AJ"/>
		</li>
		<li>
			<h4>bean tag:</h4>
			<s:bean name="main.LoginAction" var="myUser">
				<s:param name="name">Arjun M</s:param>
			</s:bean>
			
			MyUser Name = <s:property value="#myUser.name"/><br>
			MyUser Email = <s:property value="#application.email"/><br>
			Bean return method = <s:property value="#myUser.getDefaultRole()"/><br>
		</li>
		<li>
			<h4>push tag:</h4>
			<s:push value="#myUser">
				MyUser Name = <s:property value="name"/><br>
				MyUser Email = <s:property value="#application.email"/><br>
				Bean return method = <s:property value="getDefaultRole()"/><br>
			</s:push>
			<br>
			<s:set var="phone" value="\"1234567890\"" scope="application"></s:set>
			<s:push value="#application">
				email = <s:property value="email" /><br>
				Phone = <s:property value="phone" default="1234"/><br>
			</s:push>
		</li>
		<li>
			<h4>action tag:</h4>
			index.action: <s:action name="index" namespace="/" executeResult="true"></s:action>
		</li>
		<li>
			<h4>Other tags</h4>
			a tag example: <s:a href="#top">Go To Top</s:a><br>
			url tag: <s:url forceAddSchemeHostAndPort="true" /><br>
			<s:set var="date" value="#myUser.getDate()" scope="application"></s:set>
			bean date: <s:property value="#application.date" />
			date tag example: <s:date name="#application.date" format="MM/dd/yyyy"/><br>
			include tag example: <s:include value="/index.jsp"></s:include><br>
			text tag example: <s:text name="home.name"></s:text><br>
			i18n tag example: <s:i18n name="global"><s:text name="home.name"></s:text></s:i18n><br>
			i18n tag example: <s:i18n name="test"><s:text name="home.name"></s:text></s:i18n><br>
			debug tag example: <s:debug></s:debug>
		</li>
	</ul>
</body>
</html>