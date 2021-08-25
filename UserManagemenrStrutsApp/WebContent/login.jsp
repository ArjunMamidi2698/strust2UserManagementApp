<%@ taglib uri="/struts-tags" prefix="aj" %>
<link rel="stylesheet" type="text/css" href="css/loginPage.css"/>
<div class="login-content">
	<aj:if test="hasActionErrors()">
		<div class="errorDiv">
			<aj:actionerror/>
		</div>
	</aj:if>
	<h1 class="title">Login Form</h1> 
	<div class="login-form">
		<%-- cssClass="login-form" --%>
		<aj:form action="login"
		>
			<aj:textfield name="name" label="User Name"></aj:textfield>
			<aj:password name="password" label="Password"></aj:password>
			<aj:submit class="form-submit-btn" value="LOGIN"></aj:submit>
			<aj:submit class="form-submit-btn" value="REGISTER" action="register"></aj:submit>
		</aj:form>
		<%-- <input type="button" value="Register" onclick="<s:action name="index" namespace="/" executeResult="true"></s:action>" /> --%>
	</div>
</div>

