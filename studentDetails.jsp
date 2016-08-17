<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><s:property value="getText('student.details')"/></title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/charisma-app.css" rel="stylesheet">
    <link href="css/bootstrap-cerulean.min.css" rel="stylesheet">

    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.12.2.min.js"></script>
     <script src="js/jquery.dataTables.min.js"></script>
     <script src="js/jquery.cookie.js"></script>
   
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
<body>


<div class="box col-md-12">
    <div class="box-inner">
        <div class="box-header well " data-original-title><s:property value="getText('student.details')"/></div>
<div class="box-content">
<form name="myTable" action="DeleteStudent" class="table my-table-class">
<table class="table table-striped table-bordered bootstrap-datatable datatable responsive">
    <thead>
    <tr>
        <th><s:property value="getText('student.name')"/></th>
        <th><s:property value="getText('student.enrollement')"/></th>
        <th><s:property value="getText('student.class')"/></th>
        <th><s:property value="getText('student.course')"/></th>
        <th><s:property value="getText('student.email')"/></th>

        <th><s:property value="getText('student.contactno')"/></th>
      
       <th><s:property value="getText('delete.record')"/></th>
    </tr>
    </thead>
    <tbody><tr>
    <s:iterator var="i" step="1" value="student">
   <td> <s:property value="name"/></td>
   <td> <s:property value="enrollment"/></td>
    <td> <s:property value="clas"/></td>
     <td> <s:property value="course"/></td>
      <td><s:property value="email"/></td>
      <td><s:property value="contactNo"/></td>
 
 <td><s:submit  value="%{email}" theme="simple" type="button" id="" class="btn btn-danger btn-md" name="delete"
         ><i class="glyphicon glyphicon-trash icon-white"></i>Delete</s:submit></td>
      </td>
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