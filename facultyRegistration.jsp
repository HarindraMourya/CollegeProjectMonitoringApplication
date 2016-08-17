<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>facultyRegistration</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/home.css" rel="stylesheet">
    
    
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.12.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.vticker-min.js"></script>

    <style>
        
        #login4{
            margin-top: 1%;
        }
    </style>
</head>
<body>
<div id="login4">
    <div class="container bg-1 text-center" id="login" >
         <h2><s:property value="getText('faculty.registartion')"/></h2>          
        <s:form action="facultyRegistartion"  method="post" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" validate="true">
        <s:textfield key="faculty.name" name="name" placeholder="Enter Name" required="[A-Za-z]"  title="only alphabets are allowed"/>
        <s:select key="faculty.position" name="position" list="{'AssistantProfessor','HOD'}" placeholder="Enter Position" required="[A-Za-z]"  title="only alphabets are allowed"/>
        <s:textfield key="faculty.department" name="department" placeholder="Enter Department" required="[A-Za-z]"  title="only alphabets are allowed"/>
        <s:textfield key="faculty.domainarea" name="domainarea" placeholder="Enter Domain Area" required="[A-Za-z]"   title="only alphabets are allowed"/>
         <s:textfield key="faculty.contactno" name="contactno" placeholder="Enter Contact Number" required="^([0|\+[0-9]{1,5})?([1-9][0-9]{9})$" />
          <s:textfield key="faculty.email" type="email" name="email" placeholder="Enter Email" required="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/>
          <s:password key="faculty.password" name="password" placeholder="Enter Password" required=""
          title="Password must contain at least 6 characters, including UPPER/lowercase and numbers"
            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange=
          "this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
           if(this.checkValidity()) form.repassword.pattern = this.value;"
          />
          <s:password key="faculty.repassword" name="repassword" placeholder="Re- Type Password" required=""
          title="Please enter the same Password as above"
            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="
           this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"
          />
       <button type="reset" key="faculty.clear" class="btn btn-default">Clear  </button>
       <s:submit class="btn btn-default" key="faculty.login"></s:submit>
       
       
     
       </s:form>  
       
    </div>
</div>
</body>
</html>