<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s"  uri="/struts-tags"%>
    <%@taglib prefix="sb"  uri="/struts-bootstrap-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><s:property value="getText('admin.addmultiple')"/></title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
     <link href="css/chooseFile.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.12.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.vticker-min.js"></script>
    <script type="text/javascript" src="js/chooseFile.js"></script>
   <script type="text/javascript">
    function load()
    {
        document.getElementById("myModal").style.display="none";
        }
      function downloadExcel()
      {
    	  $("#myModal").modal('show');
          }
    </script>
    

    

</head>

<body onload="load()">
<div class="container bg-1 text-center" style="margin-top: 20px;">

    <h2 ><s:property value="getText('admin.addmultiple')"/></h2>
    <s:form action="multiplefacultyRegistartion"  method="post" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" validate="true">
        <s:file key="faculty.select" name="myFile"></s:file>
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
       <s:submit class="btn btn-default" key="faculty.upload"></s:submit>
       </s:form>
        <s:label ><s:property value="getText('faculty.format')"/></s:label>
       <s:a href="sampleFormat.xls" onclick="downloadExcel()"><h3>Download</h3></s:a>
       
      
 
    
    </div>
    <div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title ">Important Instructions</h4>
            </div>
            <div class="modal-body">
                <h4>Do not use any suffix with name	</h4>
                <h4>Position should be HOD or AssistantProfessor</h4>
                <h4>EmailId should match the genuine format</h4>
                <h4>Contact number should of 10 digit</h4>
                
            </div>
            <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
        </div>
    </div>
</div>
    </body>
</html>