<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>struts-tags</title>
</head>
<body>
<ol>
	<li>
		<a href="<s:url action='dataTags'/>">Data Tags</a>
	</li>
	<li>
		<a href="<s:url action='controlTags'/>">Control Tags</a>
	</li>
	<li>UI Tags</li>
</ol>
url tag:
<s:url forceAddSchemeHostAndPort="true" />
</body>
</html>