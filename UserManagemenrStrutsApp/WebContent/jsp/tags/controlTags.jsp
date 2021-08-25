<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Control tags</title>
</head>
<body>
<h1>Control tags</h1>
<%
    try{        
      beans.SampleBean bean = new beans.SampleBean();
	  bean.execute();
	  
      //Send result into generated HTML page with out.print!
      out.print(bean.getCitiesList());
      /* out.print(bean.getListProjects()); */
      pageContext.setAttribute("sampleBean", bean);
    }catch(Exception e){
        e.printStackTrace();
    }

    %>
    ${sampleBean.getListProjects()}
    
    ${sampleBean.getId()}
<!-- get beanData and use here -->
<s:bean name="beans.SampleBean" var="sbean">	
</s:bean>
<s:property value="#sbean.id"/>


<ul>
	<li>
		<h4>if-else tag:</h4>
		<s:if test="#sbean.id > 100">
			<p>User id is under 100.</p>
		</s:if>
		<s:elseif test="#sbean.role=='Developer'">
			<p>User is Developer and id is greater than or equal to 100.</p>
		</s:elseif>
		<s:else>
			<p>User is NOT Developer and id is greater than or equal to 100.</p>
		</s:else>
	</li>
	<li>
		<h4>iterator tag:</h4>
		Cities are:<br>
		<s:iterator value="#sbean.citiesList" begin="0" step="1" 
						var="citiesIterator" status="iteratorStatus">
						<s:property value="citiesIterator"/><br>
		<s:if test="#iteratorStatus.first">First City = <s:property/><br></s:if>
		<s:elseif test="#iteratorStatus.last">Last City = <s:property/></s:elseif>
		<s:else>City <s:property value="#iteratorStatus.count"/> = <s:property/><br></s:else>
		</s:iterator>
		<br><br>
		Properties Map table is:
		<table border="1" cellspacing="0" cellpadding="1">
		<tr>
		  <th>Name</th><th>Value</th>
		</tr>
		<s:iterator value="#sbean.propertiesMap" status="maprowStatus">
		  <tr>
		    <s:if test="#maprowStatus.odd == true">
		      <td style="background: grey"><s:property value="key"/></td>
		      <td style="background: grey"><s:property value="value"/></td>
		    </s:if>
		    <s:else>
		      <td><s:property value="key"/></td>
		      <td><s:property value="value"/></td>
		    </s:else>
		  </tr>
		</s:iterator>
		</table>
	</li>
	<li>
		<h4>Generator tag</h4>
		Generate iterator example:<br>
		<s:generator val="%{'apple|banana|orange'}" separator="|" var="fruitsIterator" />
		 <s:iterator value="#fruitsIterator">
		     <s:property /><br/>
		 </s:iterator>
	</li>
	<li>
		<h4>Append and Merge tags:</h4>
		Appending Cities and Countries List:<br>
		<s:append var="appendedList">
			<s:param value="#sbean.citiesList"></s:param>
			<s:param value="#sbean.countryList"></s:param>
		</s:append>
		
		<s:iterator value="#appendedList" status="myListStatus">
			<s:property value="#myListStatus.count"/>. <s:property/><br>
		</s:iterator>
		<br><br>
		
		Merging Cities and Countries List:<br>
		<s:merge var="mergedList">
			<s:param value="#sbean.citiesList"></s:param>
			<s:param value="#sbean.countryList"></s:param>
		</s:merge>
		<s:iterator value="#mergedList" status="myListStatus">
			<s:property value="#myListStatus.count"/>. <s:property/><br>
		</s:iterator>
		<br><br>
	</li>
</ul>
<s:debug></s:debug>
</body>
</html>