<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><s:property value="admin.mailbox"/></title>
<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/home.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.12.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.vticker-min.js"></script>
    <script type="text/javascript" src="js/adminDashboard.js"></script>
    

</head>
<body>
<div class="container bg-1 text-center" style="margin-top: 20px;">

<s:form action="#"  theme="bootstrap" cssClass="form-horizontal" id="mailForm" >
   <br>
   <br>
   <s:textfield type="email" key="mail.recevier" name="recevier" required="" id="recevier"/>
    <s:textfield key="mail.subject" name="subject" required="" id="subject"/>
    <s:textarea key="mail.body" name="message" rows="10%" cols="20%" required="" id="body"></s:textarea>
   <%--  <s:submit type="button" key="mail.send" class="btn btn-default" onclick="sendMail()"></s:submit>
    --%> 
    <button  type="button" class="btn btn-default" onclick="sendMail()"><s:property value="getText('mail.send')"/></button>
    <button  type="reset"  class="btn btn-default" ><s:property value="getText('student.clear')"/></button>
    
    </s:form>


</div>
</body>
</html>