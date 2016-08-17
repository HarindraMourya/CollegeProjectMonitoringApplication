<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html >
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Harinder">
    <meta name="keywords" content="HMRITM, college project management, management, project management, project approval">
    <title><s:property value="getText('project.heading')"/></title>
    <script src="js/jquery-1.12.2.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/home.css">
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.vticker-min.js"></script>
    <script type="text/javascript" src="js/home.js"></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>

<body onload="myFunction()">
<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"><s:property value="getText('project.heading')"/></a>
        </div>
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
</nav>
<div class="container bg-1 text-center" id="msg" style="margin-top: 4%; max-width: 70% "><p>
<h4>
<%-- <s:property value="getText('login.message')"/> ${sessionScope.user}  --%>
</h4>
<h4><s:property value="studentMessege"/>  </h4>
<h4><s:property value="messege"/>  </h4>

</p>
</div>
<div id="login2">
    <div class="container bg-2 text-center" id="login" >
        
        <h2><s:property value="getText('login.heading')"/></h2>
         <h1></h1>
        <s:form action="Login"  method="post" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" validate="true">
        <s:textfield type="email" id="email" key="login.email" name="email" placeholder="Enter Email" required="" />
        <s:password  key="login.password" id="password" name="password" placeholder="Enter password" required="" />
        <s:select key="login.category" id="category" list="{'Student','Faculty','HOD'}"  name="category" required=""></s:select>
        <s:checkbox  key="index.remember" name="remember" id="remember_me"></s:checkbox>
        <s:submit key="login.button" class="btn btn-info"></s:submit>
        <h4><s:property value="getText('login.member')"/>
        <s:a  href="#" onclick='showRegistration()'><s:property value="getText('login.register')"/></s:a>
        </h4>
        </s:form>
     </div>
</div>


<div id="login3">
    <div class="container bg-2 text-center" id="adminLogin">
        <h2><s:property value="getText('login.adminlogin')"/></h2>
        <s:form action="AdminLogin"  method="post" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" validate="true">
        <s:textfield type="email" key="login.email" name="email" placeholder="Enter Email"  />
        <s:password  key="login.password" name="password" placeholder="Enter password" />
        <div class="g-recaptcha " data-sitekey="6LeYsBoTAAAAAH78icf_pk69hJX7Ca5w83bHnwEE"></div>
        <%--  <s:textfield style="display:none" name="g-recaptcha-response" value=""></s:textfield> --%>
        <s:hidden name="g-recaptcha-response"></s:hidden>
        <s:checkbox key="index.remember" name="remember" id="remember_me"></s:checkbox>
        <s:submit key="login.button" class="btn btn-info"></s:submit>
        <h4><s:property value="getText('login.member')"/>
        <s:a  href="#" onclick='showRegistration()'><s:property value="getText('login.register')"/></s:a>
        </h4>
        </s:form>

        
    </div>
</div>

<div id="register">
    <div class="container bg-2 text-center" id="registration">
        <h2><s:property value="getText('student.registration')"/></h2>
         <s:form action="StudentRegistration"  method="post" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" >
         <s:textfield key="student.name" name="name" placeholder="Enter name" required="" pattern="^[a-zA-Z\s]+$"/>
        <s:select key="student.course" list="courseList" name="course" headerKey="1" headerValue="Select Course" required=""></s:select> 
         <s:textfield key="student.enrollement" name="enrollment" Placeholder="Enter Enrollement Number" required="" ></s:textfield>
        <s:select key="student.class" list="clasList" name="clas" headerKey="-1" headerValue="Select Class" required=""></s:select>  
         <s:textfield key="student.contactno" name="contactNo" placeholder="Enter Contact Number" required="" ></s:textfield>
         <s:textfield type="email" key="student.email" name="email" placeholder="Enter Email"  required=""/>
         <s:password  key="student.password" name="password" placeholder="Enter password" required=""
         title="Password must contain at least 6 characters, including UPPER/lowercase and numbers"
            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange=
          "this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
           if(this.checkValidity()) form.repassword.pattern = this.value;"
          />
         <s:password  key="student.repassword" name="repassword" placeholder="Re-Enter password" required=""
          title="Please enter the same Password as above"
            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="
           this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"
         />
         <button type="reset"  class="btn btn-info"><s:property value="getText('student.clear')"></s:property></button>
         <s:submit key="login.button" class="btn btn-info"></s:submit>
        
        </s:form>
            </div>
</div>


<nav>
    <div class="navbar-fixed-bottom">
        <footer class="pagefooter">
            <!-- <div class="container">
                <p class="text-muted" id="cpr"> Copyright &copy; 2016-17 College Project Monitoring Application , All Rights Reserverd.</p>
                <p style=" text-align: center;
            font-weight: bold;">
                <a href="http://www.facebook.com" target="_blank"><button style="background-color: #365899" type="button" class="btn btn-primary"><img src="images/fb2.gif"> Facebook</button></a>&nbsp&nbsp
                <a href="http://in.linkedin.com" target="_blank"><button style="background-color: #007CAA" type="button" class="btn btn-primary"><img src="images/lin.png"> Linkdin</button></a>&nbsp&nbsp
                <a href="http://www.twitter.com" target="_blank"><button style="background-color: #58AEE9" type="button" class="btn btn-primary"><img src="images/tw2.png"> Twitter</button></a>&nbsp&nbsp
                <a href="http://web.skype.com" target="_blank"><button style="background-color: #E7F1F5" type="button" class="btn btn-primary"><img src="images/sk.png"> Skype</button></a>&nbsp&nbsp
               
                </p>
            </div> -->
            <div class="container">
                <p class="text-muted" id="cpr"> Copyright &copy; 2016-17 College Project Monitoring Application , All Rights Reserverd.</p>
                 <p style=" text-align: center;
            font-weight: bold;">
                <a href="http://www.facebook.com" target="_blank"><img src="facebook.png"/>Follow On Facebook</a>&nbsp&nbsp
                <a href="http://in.linkedin.com" target="_blank"><img src="linkedin-icon.png"/>Follow On Linkdin</a>&nbsp&nbsp
                <a href="http://www.twitter.com" target="_blank"><img src="twitter.png"/>Follow On Twitter</a>&nbsp&nbsp
                <a href="http://web.skype.com" target="_blank"><img src="skype.png"/>Connect With Skype</a>&nbsp&nbsp
               
                </p>
            </div>
        </footer>



    </div>
</nav>


</body>
</html>