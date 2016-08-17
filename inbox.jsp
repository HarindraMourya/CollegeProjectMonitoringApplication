<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
    <%@taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><s:property value="getText('title.inbox')"/></title>
</head>
<body>
<table>
<s:iterator value="mail" var="i" step="1">
<tr><td><s:property value="date"/></td>
<td><s:property value="sender"/></td>
<td><s:property value="subject"/></td>
<td><s:property value="message"/></td></tr>
</s:iterator>
</table>
</body>
</html>