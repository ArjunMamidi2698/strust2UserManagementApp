<!DOCTYPE html PUBLIC 
    "-//W3C//DTD XHTML 1.1 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
     
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="custom" uri="/WEB-INF/test.tld" %>
 
<html>
<head>
    <title>Hello World</title>
    <s:head />
</head>
<body>
<%
  int a=1;
  String name="ABC";
  pageContext.setAttribute("mobile", "0123456789");
%>

<s:set var="email" value="\"arjun@gmail.com\""></s:set>
	hello label tag:<br>
	<custom:test name="arjun"/><br><br>
	<s:property value="#email"></s:property><br>
	<custom:test name="${email}"/><br>
	<custom:test name="${mobile}"/><br>
	
	hello label tag test2:<br>
	<custom:customLabel name="arjun"/><br>
	<custom:customLabel name="#email"/><br>
	
	custom url tag:<br>
	<custom:customURL searchTerm="constella intelligence"></custom:customURL>
</body>
</html>