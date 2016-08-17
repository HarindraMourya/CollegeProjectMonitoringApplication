<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Harinder">
    <meta name="keywords" content="HMRITM, college project management, management, project management, project approval">
    <title><s:property value="getText('student.dashboard')"/></title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.12.2.min.js"></script>
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/charisma-app.css" rel="stylesheet">
    <link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">
    <link href="css/home.css" rel="stylesheet">
    <script src="js/angular-min.js"></script>
    </head>
    <body>
    <div class="box col-md-12">
    <div class="box-inner">
        <div class="box-header well " data-original-title><s:property value="getText('project.member')"/></div>
<div class="box-content">
<form name="myTable" action="" class="table my-table-class">
<table class="table table-striped table-bordered bootstrap-datatable datatable responsive">
    <thead>
    <tr>
        <th><s:property value="getText('student.name')"/></th>
        <th><s:property value="getText('student.enrollement')"/></th>
        <th><s:property value="getText('student.class')"/></th>
        <th><s:property value="getText('student.course')"/></th>
        <th><s:property value="getText('student.email')"/></th>

        <th><s:property value="getText('student.contactno')"/></th>
      
       <th><s:property value="getText('add.member')"/></th>
    </tr>
    </thead>
    <tbody><tr>
    <s:iterator var="i" step="1" value="studentDetails">
   <td> <s:property value="name"/></td>
   <td> <s:property value="enrollment"/></td>
    <td> <s:property value="clas"/></td>
     <td> <s:property value="course"/></td>
      <td><s:property value="email"/></td>
      <td><s:property value="contactNo"/></td>
 
 <td class="center"><input type="checkbox" name="selectStudent" >&nbsp;Select</td>
      
  </tr>
    </s:iterator>
  
   
   
    </tbody>


</table>
</form>
    <div class="form-group">
      <s:a href=""><button type="button"  class="btn btn-default">Add  </button></s:a>
        
    </div>
</div>


    </div>
    </body>
    </html>