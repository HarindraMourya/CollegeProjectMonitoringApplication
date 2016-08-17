<%@page import="edu.pma.dto.MailBoxDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
    <%
    String email=(String)session.getAttribute("faculty");
    if(email==null)
    {
    	 RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
    	    dispatcher.forward(request,response);
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/angular-min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Harinder">
    <meta name="keywords" content="HMRITM, college project management, management, project management, project approval">
    <title><s:property value="getText('faculty.dashborad')"/></title>
    <link rel="shortcut icon" href="logo.png" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/charisma-app.css" rel="stylesheet">
    <link href="css/adminDashboard.css" rel="stylesheet">
    <link href="css/facultyDashboard.css" rel= stylesheet">
     
    
    <link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">
    <script src="js/jquery-1.12.2.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
    
   
    <script type="text/javascript" src="js/jquery.vticker-min.js"></script>
    
    <script src="js/facultyDashboard.js"></script>
     <script src="js/jquery.dataTables.min.js"></script>
     <script src="js/jquery.cookie.js"></script>
</head>
<body onload="myFunction()">
<!-- <body ng-app="">

<div ng-include="'header.jsp'"></div></body> -->
 <!-- topbar starts -->
    <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">

        <div class="navbar-inner">
            <button type="button" class="navbar-toggle pull-left animated flip">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"><span><s:property value="getText('project.heading')"/></span></a>

        </div>
    </div>
    <!-- topbar ends -->
<div class="container bg-1 text-center" id="msg" style="margin-top: 4%; max-width: 70% "><p>
<h4>
<s:property value="getText('login.message')"/> ${sessionScope.faculty} 
</h4>
<h4><s:property value="facultyMessege"/>  </h4>
<h4><s:property value="mailMessage"/>  </h4>
<div id="msg2">
</div>
</p>
</div>

<!-- left menu starts -->
<div class="container" id="dash">
    <div class="row">
        <div class="col-sm-2 col-lg-2">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">

                    </div>
                    <ul class="nav nav-pills nav-stacked main-menu">
                        <li class="nav-header"><s:property value="getText('admin.main')"/></li>
                        <li><a  href="#" onclick="dashboard()"><span><i class="glyphicon glyphicon-dashboard"></i> <s:property value="getText('admin.dashboard')"/></span></a>
                        </li>
                        <li><a  href="#" onclick="showMail()"><span><i class="glyphicon glyphicon-envelope"></i> <s:property value="getText('mail.sentmail')"/></span></a>
                        
                        </li>
                        <li><a  href="#" onclick="showInbox()"><span><i class="glyphicon glyphicon-inbox"></i> <s:property value="getText('mail.inbox')"/><span class="badge"><s:property value="facultyMailCounts"/></span></span></a>
                        </li>
                        <li class="accordion">
                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span> <s:property value="getText('faculty.guidence')"/></span></a>
                            <ul class="nav nav-pills nav-stacked">
                                <s:iterator var="i" step="1" value="idName" >
                                 <li><s:a href="#" id="%{name}"  onclick="showProjectDetail(id)" >
                                 <span><s:property value="name" /></span></s:a></li>
                                </s:iterator>
                               
                            </ul>
                        </li>
                         <li><a  href="#" onclick="showProgress()"><span><i class="glyphicon glyphicon-book"></i> <s:property value="getText('faculty.progress')"/></span></a>
                        </li>
                       <li><a  href="#" onclick="viewProgress()"><span><i class="glyphicon glyphicon-eye-open"></i> <s:property value="getText('view.progress')"/></span></a>
                        </li>
                        <li><a  href="logout.action" ><span><i class="glyphicon glyphicon-off"></i> <s:property value="getText('admin.logout')"/></span></a>
                        </li>
                        

                    </ul>
                </div>
            </div>
        </div>
         <div class="col-sm-10 col-lg-10" id="viewDashboard">
           <ul class="nav nav-pills">
              <li class="active"><a data-toggle="pill" href="#home"><i class="glyphicon glyphicon-user"></i> <s:property value="getText('student.profile')"/></a></li>
              <li><a data-toggle="pill" href="#menu1"><i class="glyphicon glyphicon-lock"></i> <s:property value="getText('change.password')"/></a></li>
           </ul>
          <div class="tab-content" >
              <div id="home" class="tab-pane fade in active">
                   <div class="box-content">
                <table class="table table-bordered table-responsive table-hover" id="myTable">
                     <thead style="font-weight: bold">
                        <tr>
                          <td><s:property value="getText('faculty.name')"/></td>
                          <td><s:property value="getText('faculty.position')"/></td>
                          <td><s:property value="getText('faculty.department')"/></td>
                          <td><s:property value="getText('faculty.domainarea')"/></td>
                           <td><s:property value="getText('faculty.contactno')"/></td>
                            <td><s:property value="getText('faculty.email')"/></td>
                          
                        </tr>
                     </thead>
                     <tbody >
                          <s:iterator var="i" step="1" value="faculty" status="status" >
                              <tr>
                              <td><s:property value="name"/></td>
                              <td><s:property value="position"/></td>
                              <td><s:property value="department"/></td>
                              <td><s:property value="domainarea"/></td>
                              <td><s:property value="contactno"/></td>
                              <td><s:property value="email"/></td>
                              </tr>
                          </s:iterator>
                      </tbody>
                  </table>
             </div>     
              </div>
              <div id="menu1" class="tab-pane fade">
                   <s:form action="#"  method="post" enctype="multipart/form-data" 
                    theme="bootstrap" cssClass="form-horizontal" validate="true">
                          <s:password id="cpassword" key="old.password" name="oldPassword" placeholder="Enter Old Password" required=""  title="only alphabets are allowed"/>
                           <s:password id="password" key="new.password" name="password" placeholder="Enter New Password" required="" 
                             title="Password must contain at least 6 characters, including UPPER/lowercase and numbers"
                             pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange=
                             "this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
                             if(this.checkValidity()) form.repassword.pattern = this.value;"/>
                          <s:password id="repassword" key="again.password" name="repassword" placeholder="Enter Password Again" required=""  
                           title="Please enter the same Password as above"
            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="
           this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"/>
                          <button type="button" class="btn btn-default" onclick="changePassword()"><s:property value="getText('password.submit')"/>  </button>
                   </s:form>
              </div>
          </div>
        </div> 
         <div class="col-sm-10 col-lg-10">
            <div ng-include="'facultyMail.jsp'" id="mailbox"></div>
        </div> 
         <div class="col-sm-10 col-lg-10" > 
            <!-- <div ng-include="'inbox.jsp'" id="inbox"></div> -->
         
    <div class="box-inner" id="inbox">
        <div class="box-header well " data-original-title><s:property value="getText('mail.label')"/></div>
            
           <div class="box-content">
        <script src="js/charisma.js"></script>
        <body ng-app="">
        <s:iterator  var="i" step="1" value="facultyProjectMail" status="status">
<div class="container">
 
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <s:a data-toggle="collapse" href="#%{projectId}" rel="%{projectId}" onclick="messegeRead(rel)"><b><s:property value="subject"/></b>
          <span class="badge"><s:property value="status"/></span></s:a>
        </h4>
      </div>
      <s:div id="%{projectId}" class="panel-collapse collapse">
        <ul class="list-group">
          <li class="list-group-item"><b><s:property value="getText('mail.date')"/></b>&nbsp &nbsp<s:property value="date"/></li>
          <li class="list-group-item"><b><s:property value="getText('mail.sender')"/></b>&nbsp &nbsp<s:property value="sender"/></li>
          <li class="list-group-item"><b><s:property value="getText('mail.body')"/></b>
          <br><b><s:property value="getText('project.name')"/></b>&nbsp &nbsp<s:property value="name"/>
            <br><b><s:property value="getText('project.id')"/></b>&nbsp &nbsp<s:property value="projectId"/>
          <br><b><s:property value="getText('project.description')"/></b>&nbsp &nbsp<s:property value="description"/>
          <br><b><s:property value="getText('project.technology')"/></b>&nbsp &nbsp<s:property value="technology"/>
          <br><b><s:property value="getText('project.duration')"/></b>&nbsp &nbsp<s:property value="duration"/>
          <br><b><s:property value="getText('project.hodstatus')"/></b>&nbsp &nbsp<s:property value="hodStatus"/>
           <br><b><s:property value="getText('project.report')"/></b>&nbsp &nbsp<s:property value="report"/>
          </li>
        </ul>
        
        <div class="panel-footer"> 
        <s:submit theme="simple" value="%{projectId}" type="button" class="btn btn-default"  name="Approved"
        onclick="approve(value+' '+name)"><s:property value="getText('hod.accept')"/></s:submit>
        <s:submit theme="simple" value="%{projectId}" type="button" class="btn btn-default" name="Rejeted"
        onclick="approve(value+' '+name)" ><s:property value="getText('hod.reject')"/></s:submit>
        </div>
      </s:div>
    </div>
  </div>
</div>

</s:iterator>


 <s:iterator  var="i" step="1" value="facultyMails" status="status">
<div class="container">
 
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <s:a data-toggle="collapse" href="#%{id}" rel="%{id}" onclick="messegeRead(rel)"><b><s:property value="subject"/></b>
          <span class="badge"><s:property value="status"/></span></s:a>
        </h4>
      </div>
      <s:div id="%{id}" class="panel-collapse collapse">
        <ul class="list-group">
          <li class="list-group-item"><b><s:property value="getText('mail.date')"/></b>&nbsp &nbsp<s:property value="date"/></li>
          <li class="list-group-item"><b><s:property value="getText('mail.sender')"/></b>&nbsp &nbsp<s:property value="sender"/></li>
          <li class="list-group-item"><b><s:property value="getText('mail.body')"/></b>&nbsp &nbsp<s:property value="message"/>
          </li>
        </ul>
        
        
      </s:div>
    </div>
  </div>
</div>

</s:iterator>
</div>




        </div> 
        </div>
              
<!-- Project Detail Division -->
<div  class="col-sm-10 col-lg-10" id="projectDetail" >
    <div class="box-inner" >
        <div class="box-header well " data-original-title>Project Details</div>
            
           <div class="box-content">
           <table class="table table-hover table-responsive table-striped table-bordered bootstrap-datatable  "
          >
          <tbody id="tableData">
          
          </tbody>
         
        </table>
        </div>
        </div>
        
        
 
</div>
<!-- End Project Detail Division --> 
 
<!-- Fill Progress Report -->
<div  class="col-sm-10 col-lg-10" id="progress" >
    <div class="box-inner" >
        <div class="box-header well " data-original-title><s:property value="getText('project.progress')"/></div>
            
           <div class="box-content">
           <s:select id="pid" list="pid" onchange="fetchName()">
          </s:select>
<table class="table table-bordered table-responsive table-hover" id="myTable">
    <thead>
    <tr>
        <td>Member Name</td>
        <td>Remarks</td>
        <td>Marks(out of 100)</td>
    </tr></thead>
    <tbody id="memberData">
    
   
    </tbody>
  </table>
    <span id="submitButton"></span>
  
        </div>
        </div>
        </div>    

<!--End of Fill Progress Report  -->
      
<!-- View Progress Report -->
<div class="col-sm-10 col-lg-10" id="view">
    <div class="box-inner" >
        <div class="box-header well " data-original-title><s:property value="getText('progress.report')"/></div>
            <div class="box-content">
                <table class="table table-bordered table-responsive table-hover" id="myTable">
                     <tbody id="viewReport">
                      </tbody>
                  </table>
             </div> 
        </div>
    </div>
</div>      
<!-- End View Progress Report -->  
<div ng-include="'footer.html'">
</div></body>
</body>
<!--Add the following script at the bottom of the web page (immediately before the </body> tag)-->
<script type="text/javascript" async="async" defer="defer" data-cfasync="false" src="https://mylivechat.com/chatinline.aspx?hccid=71693133"></script>

</html>