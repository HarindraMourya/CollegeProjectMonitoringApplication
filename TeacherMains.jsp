<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sb:head/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Harinder">
    <meta name="keywords" content="HMRITM, college project management, management, project management, project approval">
    <link href="css/charisma-app.css" rel="stylesheet">
    <link id="bs-css" href="lib/css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="lib/js/jquery.vticker-min.js"></script>
    <script src="js/angular-min.js"></script>

    <title>dashboard</title>
    <style>
        #admin{
             margin-top: 5%;  
			
        }
        .modal{
            overflow-y: auto;

        }

    </style>
<script>

</script>



</head>

<body>


 <body ng-app="">

<div ng-include="'Header.jsp'"></div></body> 

<s:property value="email"/>

<!-- left menu starts -->
<div class="col-sm-2 col-lg-2" id="admin">
 <img src="Profile.jpg"  class="img-thumbnail" width="250" height="250" alt="profile_img" >
    <div class="sidebar-nav">
        <div class="nav-canvas">
            <div class="nav-sm nav nav-stacked">

            </div>
            
           
            
            
            <ul class="nav nav-pills nav-stacked main-menu" >
                <li class="nav-header">Main</li>
              <%--   <li>
                <s:select list="lists" name="projectidlist" label="Country" 
		headerKey="-1" headerValue="Select projectid" ></s:select>
                </li> --%>
                <li>
                <s:iterator value="lists" begin="0" step="1" 
				var="projectIterator" status="iteratorStatus">
				
				 <%-- <li><a class="ajax-link" href="#"><span>Projectid: <s:property value="#projectIterator"/><br></span></a>
                </li> --%>
                
                <%-- <li><s:a class="ajax-link" action="projectInfo" ><span>Projectid: <s:property value="#projectIterator"/> <br></span></s:a>
                </li> --%>
                
             <li>   <s:a action="projectInfo" ><%-- <s:param name="myparam" value="%{projectIterator}"/> --%><span>Projectid <s:property value="#projectIterator"/> <br></span></s:a> </li>
				
				</s:iterator>
                
                </li>
               

              <!--   <li><a class="ajax-link" href="#"><span> Add Single Faculty</span></a></li>
                <li><a class="ajax-link" href="#"><span> Add Multiple Faculty</span></a></li>


                <li><a class="ajax-link" href="#"><span>Faculty Details</span></a>
                </li>
                <li><a class="ajax-link" href="#"><span>Student Details</span></a>
                </li>
                <li><a class="ajax-link" href="index.html"><span>Logout</span></a>
                </li> -->

            </ul>
        </div>
    </div>
</div>

<body ng-app="">

<div ng-include="'TeacherOutput.jsp'"></div></body> 

<!--/span-->
<!-- left menu ends -->
<script src="lib/js/charisma.js"></script>

<!-- <body ng-app="">

<div ng-include="'footer.html'"></div></body>  -->


</body>
</html>