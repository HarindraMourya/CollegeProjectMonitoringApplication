<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Harinder">
    <meta name="keywords" content="HMRITM, college project management, management, project management, project approval">
    <title>Header</title>
     <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery-1.12.2.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
    
    
    
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
   
    <%-- <script type="text/javascript" src="js/jquery.vticker-min.js"></script> --%>
   
   </head>
<body>

<nav class="navbar navbar-fixed-top navbar-inverse">
           
            
            
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
               <a class="navbar-brand" href="index.jsp"><s:property value="getText('project.heading')"/></a>        </div>
        <div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="float:right">
                <ul class="nav navbar-nav nav-pills">
                    <li class="active"><a data-toggle="pills" href=""><span><p onclick='myFunction()'><s:property value="getText('index.home')"/></p></span></a></li>
                    <li><a data-toggle="pills" href="#"  ><span><p  onclick='showLogin()'><s:property value="getText('index.login')"/></p></span></a></li>
                    <li><a data-toggle="pills" href="#"><span><p onclick='showRegistration()'><s:property value="getText('index.registration')"/></p></span></a></li>
                    <li><a data-toggle="pills" href="#"><span><p  onclick='showAdmin()'><s:property value="getText('index.admin')"/></p></span></a></li>
                    <li><a data-toggle="pills" href="#"><s:property value="getText('index.contactus')"/></a></li>


                </ul>
            </div>
        </div>
    </div>
    </div>
</nav>

</body>
</html>