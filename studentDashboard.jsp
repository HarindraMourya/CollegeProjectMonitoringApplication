<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sb" uri="/struts-bootstrap-tags"%>
     <%
    String email=(String)session.getAttribute("student");
    if(email==null)
    {
    	 RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
    	    dispatcher.forward(request,response);
    }
    %>
<!DOCTYPE html>
<html>
<head>
<script src="js/angular-min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Harinder">
    <meta name="keywords" content="HMRITM, college project management, management, project management, project approval">
<title><s:property value="getText('student.dashboard')"/></title>
 <link rel="shortcut icon" href="logo.png" />
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/charisma-app.css" rel="stylesheet">
    <link href="css/adminDashboard.css" rel="stylesheet">
    <link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">
    <link href="css/home.css" rel="stylesheet">
    
 <script src="js/jquery-1.12.2.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.vticker-min.js"></script>
   
    
    <script src="js/studentDashboard.js"></script>
     <script src="js/jquery.dataTables.min.js"></script>
     <script src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/sendStudentMail.js"></script>
     <script src="js/charisma.js"></script>
   
</head>
<body ng-app="" onload="myFunction()">

<!-- <div ng-include="'header.jsp'"></div> -->
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
<div class="container bg-1 text-center" id="msg" style="margin-top: 4%; max-width: 70%">
<p>
<h4>
<s:property value="getText('login.message')"/> ${sessionScope.student} 
</h4>
<h4><s:property value="initialProjectMsg"/>  </h4>
<h4><s:property value="mailMessage"/>  </h4>
<h4><s:property value="uploadMessage"/>  </h4>
<div id="msg2">
</div>
</p>
</div>

<!-- left menu starts -->
<div class="container" id="dash">
    <div class="row">
        <div class="col-sm-2 col-lg-2 ">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">

                    </div>
                    <ul class="nav nav-pills nav-stacked main-menu">
                        <li class="nav-header"><s:property value="getText('admin.main')"/></li>
                        <li><a  href="#" onclick="dashboard()"><span><i class="glyphicon glyphicon-dashboard"></i> <s:property value="getText('student.dashboard')"/></span></a>
                        </li>
                        <li><a  href="#" onclick="addproject()"><span><i class="glyphicon glyphicon-plus"></i> <s:property value="getText('student.addproject')"/></span></a>
                        
                        </li> 
                        <li><a  href="#" onclick="showProject()"><span><i class="glyphicon glyphicon-briefcase"></i> <s:property value="getText('student.projects')"/><span class="badge"><s:property value="projectStatus"/></span></span></a>
                         </li>
                        <li><a  href="#" onclick="showMember()"><span><i class="glyphicon glyphicon-plus"></i> <s:property value="getText('student.addmember')"/></span></a>
                        </li> 
                        <li><a  href="#" onclick="showTeam()"><span><i class="glyphicon glyphicon-user"></i> <s:property value="getText('student.team')"/></span></a>
                        </li>
                        <li><a  href="#" onclick="showDocuments()"><span><i class="glyphicon glyphicon-upload"></i> <s:property value="getText('upload.documents')"/></span></a>
                        </li>
                        
                        <li><a  href="#" onclick="showMail()"><span><i class="glyphicon glyphicon-envelope"></i> <s:property value="getText('mail.sentmail')"/></span></a>
                        
                        </li>
                        <li><a  href="#" onclick="showInbox()"><span><i class="glyphicon glyphicon-inbox"></i> <s:property value="getText('mail.inbox')"/><span class="badge"><s:property value="studentMailCount"/></span></span></a>
                        
                        </li>

                       
                        <li><a  href="logout.action" ><span><i class="glyphicon glyphicon-off"></i> <s:property value="getText('admin.logout')"/></span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
       
       <div class="col-sm-10 col-lg-10" id="viewDashboard">
           <ul class="nav nav-pills">
              <li class="active"><a data-toggle="pill" href="#home"><i class="glyphicon glyphicon-upload"></i> <s:property value="getText('document.uploaded')"/></a></li>
              <li><a data-toggle="pill" href="#menu1"><i class="glyphicon glyphicon-eye-open"></i> <s:property value="getText('view.progress')"/></a></li>
              <li><a data-toggle="pill" href="#menu2"><i class="glyphicon glyphicon-user"></i> <s:property value="getText('student.profile')"/></a></li>
              <li><a data-toggle="pill" href="#menu3"><i class="glyphicon glyphicon-lock"></i> <s:property value="getText('change.password')"/></a></li>
           </ul>
          <div class="tab-content" >
              <div id="home" class="tab-pane fade in active">
               <div class="box-content"> 
                    <table class="table table-bordered table-responsive table-hover">
                          <thead style="font-weight: bold">
                             <tr>
                               <td><s:property value="getText('student.projectid')"/> </td>
                               <td><s:property value="getText('document.title')"/> </td>
                               <td><s:property value="getText('document.uploaded')"/> </td>
                               <td><s:property value="getText('mail.date')"/> </td>
                               <td><s:property value="getText('login.email')"/> </td>
                             </tr>
                          </thead>
                          <tbody>
                                 <s:iterator var="i" step="1" value="document" status="status">
                             <tr>
                              <td><s:property value="projectId"/></td>
                              <td><s:property value="title"/></td>
                              <td><a href='<s:property value="document"/>'><button type='button' class='btn btn-primary glyphicon glyphicon-arrow-down'>Download</button></a ></td>
                              <td><s:property value="date"/></td>
                              <td><s:property value="email"/></td>
                              </tr>
                       </s:iterator>
                          </tbody>
                     </table> 
                     </div>
              </div>
              <div id="menu1" class="tab-pane fade">
                 <div class="box-content">
                <table class="table table-bordered table-responsive table-hover" id="myTable">
                     <thead style="font-weight: bold">
                        <tr>
                          <td><s:property value="getText('student.projectid')"/></td>
                          <td><s:property value="getText('member.remark')"/></td>
                          <td><s:property value="getText('member.mark')"/></td>
                          <td><s:property value="getText('progress.date')"/></td>
                          
                        </tr>
                     </thead>
                     <tbody id="viewReport">
                          <s:iterator var="i" step="1" value="report" status="status" >
                              <tr>
                              <td><s:property value="projectId"/></td>
                              <td><s:property value="remark"/></td>
                              <td><s:property value="marks"/></td>
                              <td><s:property value="week"/></td>
                              </tr>
                          </s:iterator>
                      </tbody>
                  </table>
             </div>     
              </div>
              <div id="menu2" class="tab-pane fade">
                   <div class="box-content">
                <table class="table table-bordered table-responsive table-hover" id="myTable">
                     <thead style="font-weight: bold">
                        <tr>
                          <td><s:property value="getText('student.name')"/></td>
                          <td><s:property value="getText('student.class')"/></td>
                          <td><s:property value="getText('student.enrollement')"/></td>
                          <td><s:property value="getText('student.course')"/></td>
                           <td><s:property value="getText('student.contactno')"/></td>
                            <td><s:property value="getText('student.email')"/></td>
                          
                        </tr>
                     </thead>
                     <tbody id="viewReport">
                          <s:iterator var="i" step="1" value="student" status="status" >
                              <tr>
                              <td><s:property value="name"/></td>
                              <td><s:property value="clas"/></td>
                              <td><s:property value="enrollment"/></td>
                              <td><s:property value="course"/></td>
                              <td><s:property value="contactNo"/></td>
                              <td><s:property value="email"/></td>
                              </tr>
                          </s:iterator>
                      </tbody>
                  </table>
             </div>     
              </div>
              <div id="menu3" class="tab-pane fade">
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
        <div class="col-sm-10 col-lg-10" >
             <div ng-include="'addProject.jsp'" id="addproject"></div> 
        </div> 
        <div class="col-sm-10 col-lg-10" id="project">
            <div class="box-inner" >
        <div class="box-header well " data-original-title><s:property value="getText('project.label')"/></div>
            
           <div class="box-content">
<form name="myTable" action="#" class="table ">
<table class="table table-responsive table-striped table-bordered bootstrap-datatable datatable responsive">
    <thead>
    <tr>
        <th><s:property value="getText('project.name')"/></th>
        <th><s:property value="getText('project.id')"/></th>
        <th><s:property value="getText('project.description')"/></th>     
        <th><s:property value="getText('project.technology')"/></th>
        <th><s:property value="getText('project.guide')"/></th>
            <th><s:property value="getText('project.duration')"/></th>
                <th><s:property value="getText('project.report')"/></th>
                    <th><s:property value="getText('project.hodstatus')"/></th>
                    <th><s:property value="getText('project.guidestatus')"/></th>
        
    </tr>
    </thead> 
    <s:iterator  var="i" step="1" value="project"><tr>
    <td><s:property value="name"/></td>
<td><s:property value="projectId"/></td>

<td><s:property value="description"  /></td>
<td><s:property value="technology"/></td>
<td><s:property value="guide"/></td>
<td><s:property value="duration"/></td>
<td><s:property value="report"/></td>
<td><s:property value="hodStatus"/></td>
<td><s:property value="guideStatus"/></td>

</s:iterator>
</table>
</form>
</div></div></div>

<div class="col-sm-10 col-lg-10" id="addmember">
    <div class="box col-md-12">
        <div class="box-inner">
             <div class="box-header well " data-original-title><s:property value="getText('project.member')"/></div>
             <div class="box-content">
                 <form name="myTable" action="" class="table my-table-class" id="studentData">
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
                 <tbody>
                 <tr>
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
                 <s:select key="select.projectId" list="projectId" id="pid" headerKey="1" 
                  headerValue="Select Project Id" data-toggle="popover" title="Select Project Id" 
                   data-trigger="focus"></s:select>
               
                 </form>
    <div class="form-group">
      <s:a href=""><button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-default btn-lg" 
      onclick="addProjectMembers(document.getElementById('studentData'),document.getElementById('pid').value)">Add  </button></s:a>
    </div>
</div>
</div>
     </div> 
    </div>
       
         <!-- Team Member -->
           <div class="col-sm-10 col-lg-10" id="teamMember">
           
                 <div class="box-inner" >
        <div class="box-header well " data-original-title><s:property value="getText('project.label')"/></div>
            
           <div class="box-content">
<form name="myTable" action="#" class="table ">
<table class="table table-responsive table-striped table-bordered bootstrap-datatable datatable responsive">
    <thead>
    <tr>
       
        <th><s:property value="getText('project.id')"/></th>
        <th><s:property value="getText('student.team')"/></th>     
        <th><s:property value="getText('team.status')"/></th>
       
    </tr>
    </thead> 
    <s:iterator  var="i" step="1" value="projectMember"><tr>
   
<td><s:property value="projectId"/></td>


<td><s:property value="member"/></td>
<td><s:property value="status"/></td>
</s:iterator>
</table>
</form>
</div></div>
            
        </div> 
           <!-- End Team Member -->
         
         <!-- Upload Document -->
         <div class="col-sm-10 col-lg-10" id="document">
         <div class="container bg-1 text-center" style="margin-top: 20px;">
          <h2 ><s:property value="getText('upload.documents')"/></h2>
            <s:form action="uploadDocuments" id="uplaodData" method="post" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" validate="true">
            <s:textfield key="document.title" name="title" required="required"></s:textfield>
            <s:select key="select.projectId" name="pid" list="projectId" id="pid" headerKey="" 
                  headerValue="Select Project Id" data-toggle="popover" title="Select Project Id" 
                   data-trigger="focus" required="required"></s:select>
            <s:file key="document.select" name="myFile" required="required"></s:file>
             <button type="reset" key="faculty.clear" class="btn btn-default">Clear  </button>
             <s:submit class="btn btn-default" key="faculty.upload"></s:submit>
     
            </s:form>
         </div> 
         </div>
         
          <!-- End Upload Document -->
         
         <div class="col-sm-10 col-lg-10">
            <div ng-include="'studentMail.jsp'" id="mailbox"></div> 
        </div> 
        
         <div class="col-sm-10 col-lg-10" > 
            <!-- <div ng-include="'inbox.jsp'" id="inbox"></div> -->
          <div class="box-inner" id="inbox">
        <div class="box-header well " data-original-title><s:property value="getText('mail.label')"/></div>
            
           <div class="box-content">
       
        <s:iterator  var="i" step="1" value="mail" status="status">
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
<!-- projcet Mail -->
 <s:iterator  var="i" step="1" value="studentMailBox" status="status">
<div class="container">
 
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <s:a data-toggle="collapse" href="#%{id}" rel="%{id}" onclick="projectRead(rel)"><b><s:property value="subject"/></b>
          <span class="badge"><s:property value="status"/></span></s:a>
        </h4>
      </div>
      <s:div id="%{id}" class="panel-collapse collapse">
        <ul class="list-group">
          <li class="list-group-item"><b><s:property value="getText('mail.date')"/></b>&nbsp &nbsp<s:property value="date"/></li>
          <li class="list-group-item"><b><s:property value="getText('mail.sender')"/></b>&nbsp &nbsp<s:property value="sender"/></li>
          <li class="list-group-item"><b><s:property value="getText('mail.body')"/></b>
          <br><b><s:property value="getText('project.name')"/></b>&nbsp &nbsp<s:property value="name"/>
            <br><b><s:property value="getText('project.id')"/></b>&nbsp &nbsp<s:property value="projectId"/>
          <br><b><s:property value="getText('project.description')"/></b>&nbsp &nbsp<s:property value="description"/>
          <br><b><s:property value="getText('project.technology')"/></b>&nbsp &nbsp<s:property value="technology"/>
          <br><b><s:property value="getText('project.duration')"/></b>&nbsp &nbsp<s:property value="duration"/>
         
           <br><b><s:property value="getText('project.report')"/></b>&nbsp &nbsp<s:property value="report"/>
          </li>
        </ul>
        
        <div class="panel-footer"> 
        <s:submit theme="simple" value="%{projectId}" type="button" class="btn btn-default"  name="Approved"
        onclick="approve(value+' '+name)"><s:property value="getText('student.accept')"/></s:submit>
        <s:submit theme="simple" value="%{projectId}" type="button" class="btn btn-default" name="Rejeted"
        onclick="approve(value+' '+name)" ><s:property value="getText('student.reject')"/></s:submit>
        </div>
      </s:div>
    </div>
  </div>
</div>

</s:iterator>
</div>
</div>

         
         
         
         
         
    

<!--/span-->
<!-- left menu ends -->

<div ng-include="'footer.html'"></div>

</body>
<!--Add the following script at the bottom of the web page (immediately before the </body> tag)-->
<script type="text/javascript" async="async" defer="defer" data-cfasync="false" src="https://mylivechat.com/chatinline.aspx?hccid=71693133"></script>

</html>