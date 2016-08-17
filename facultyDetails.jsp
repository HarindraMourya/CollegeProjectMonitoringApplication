
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
     <%@taglib prefix="s"  uri="/struts-tags"%>
    <%@taglib prefix="sb"  uri="/struts-bootstrap-tags"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>table</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/charisma-app.css" rel="stylesheet">
    <link href="css/bootstrap-cerulean.min.css" rel="stylesheet">
<script src="js/jquery-1.12.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
   
    <style>
        #cancel{
            display: inline-block;
            position: relative;
            margin-left: 5%;
        }
        #register{
            position: relative;
            margin-left: 85%;
        }
       

    </style>
   
</head>
<body ><!-- onload="callDetails()"  -->



<div class="box col-md-12" >
    <div class="box-inner">
        <div class="box-header well " data-original-title><s:property value="getText('faculty.details')"/></div>
<div class="box-content">
<form name="myTable" action="DeleteFaculty" class="table my-table-class">
<table class="table table-responsive table-striped table-bordered bootstrap-datatable datatable responsive">
    <thead>
    <tr>
        <th><s:property value="getText('faculty.name')"/></th>
        <th><s:property value="getText('faculty.position')"/></th>
        <th><s:property value="getText('faculty.department')"/></th>
        <th><s:property value="getText('faculty.domainarea')"/></th>
        <th><s:property value="getText('faculty.email')"/></th>

        <th><s:property value="getText('faculty.contactno')"/></th>
        <th><s:property value="getText('delete.record')"/></th>
        
    </tr>
    </thead>
    <tbody>
    <s:iterator var="i" step="1" value="faculty" status="status">
       <tr>
       <td> <s:property value="name"/></td>   
       <td> <s:property value="position"/></td>
       <td> <s:property value="department"/></td>
       <td> <s:property value="domainarea"/></td>
       <td> <s:property value="email"/></td>
       <td> <s:property value="contactno"/></td>
        <td><s:submit  value="%{email}" theme="simple" type="button" id="" class="btn btn-danger btn-md" name="delete"
         ><i class="glyphicon glyphicon-trash icon-white"></i>Delete</s:submit></td>
     </tr>
    </s:iterator>
   
    </tbody>


</table>
</form>
    <div class="form-group">
        <s:a href="admin.action"><button type="button"  class="btn btn-default">Close  </button></s:a>
        
    </div>
</div>


    </div>
</body>
</html>