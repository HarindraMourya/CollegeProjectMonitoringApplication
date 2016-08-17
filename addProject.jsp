<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/container.css"/>
<script src="js/jquery-1.12.2.min.js"></script>
<script src="js/addProject.js"></script>
<script type="text/javascript" src="js/studentDashboard.js"></script>
<title>addProject</title>
</head>
<body>
<div class="container bg-1 text-center" id="login" >
         <h2><s:property value="getText('student.addproject')"/></h2>          
        <s:form action="addProject"  method="post" enctype="multipart/form-data" id="addProjectForm"
        theme="bootstrap" cssClass="form-horizontal" validate="true">
        <s:textfield id="name" key="project.name" name="name" placeholder="Enter Project Name" required=""  title="only alphabets are allowed"/>
        <s:textarea id="desc"  maxlength="500" key="project.description" name="description" rows="3%" cols="20%" required="" title=""></s:textarea><%-- <span id="chars">100</span> characters remaining --%>
        <s:textfield id="technology" key="project.technology" onfocusout="getGuide()"
         name="technology" placeholder="Enter Technolgy Use " required=""  title="only alphabets are allowed"/>
        <s:select id="guide" key="project.guide" name="guide" list="{'Select Guide'}" 
        headerKey="" headerValue="Select guide" ></s:select>
        <s:textfield id="duration" key="project.duration" name="duration" placeholder="Enter Project Duration In Month" required="" pattern="[1-30]" title="only numerics are allowed"/>
         <s:select id="report" key="project.report" name="report" list="{'weekly','monthly','quaterly'}" headerKey="" headerValue="Select Report Generation Interval" ></s:select>
        
       <button type="reset" key="faculty.clear" class="btn btn-default">Clear  </button>
       <button type="button" class="btn btn-default" onclick="addProject()"><s:property value="getText('student.addproject')"/>  </button>
      <%--  
       <s:submit class="btn btn-default" key="student.addproject"></s:submit>
        --%>
       
     
       </s:form>  
       
    </div>
</body>
</html>