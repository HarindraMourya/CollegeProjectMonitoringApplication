<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
     <%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mail</title>
</head>
<body>
<s:form action="emailer" method="post">
<s:textfield label="From" name="from"/>
<s:password label="Password" name="password"/>
<s:textfield label="To" name="to"/>
<s:textfield label="Subject" name="subject"/>
<s:textfield label="Body" name="body"/>
<s:submit value="Submit"></s:submit>

</s:form>
</body>
</html>