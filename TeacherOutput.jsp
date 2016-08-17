<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<head>
<sb:head/>
<meta charset="UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/charisma-app.css" rel="stylesheet">
    <link href="css/bootstrap-cerulean.min.css" rel="stylesheet">

    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
     <script src="js/angular-min.js"></script>
     <style type="text/css">
     
     #a{
        margin-top:15%;
        margin-left: 20%;
		margin-right: 10%;
		
        }
     
   
     
     
     </style>


<title>Insert title here</title>
</head>
<body>
<body ng-app="">





<%--  <s:iterator value="initialDetailLists" begin="0" step="1" 
				var="DetailIterator" status="iteratorStatus">
				
				
                
               <s:a class="ajax-link" action="projectInfo"><span>Projectid: <s:property value="#DetailIterator"/><br></span></s:a>
               
               
                <s:if test="#iteratorStatus">First City = <s:property value="#DetailIterator"/><br></s:if>
				
				</s:iterator> --%>
				
				
				
				
				
				<%--  <s:iterator value="projectGuideAction.lists" begin="0" step="1" 
				var="projectIterator2" status="iteratorStatus">
				<li>   <s:a ><span>Projectid: <s:property value="#projectIterator2"/> <br></span></s:a> </li>
				</s:iterator> --%>

<s:iterator value="initialDetailLists" begin="0" step="1" 
				var="DetailIterator" status="iteratorStatus">
<s:if test="#DetailIterator.getProjectId()==#Projectid">

 
  tit <s:property value="#DetailIterator.getTitle()"/>
  
</s:if>
</s:iterator>

<div class="container bg-1 text-center" id=a>

<s:form theme="bootstrap" cssClass="form-horizontal">



<s:label name="projectid" label="Project Id: " ></s:label> <s:property value="initialDetailLists[1].getTitle()"/>
<s:label name="title" label="Title: "></s:label>
<s:label name="description" label="Description" cols="20" rows="3" wrap="true"></s:label>
<s:label name="uploadDocument" label="Uploadled Document: " cols="20" rows="3" wrap="true"></s:label>



</s:form>

<h1 >Fill Progress Report</h1>

<s:form action="Welcome" namespace="/" theme="bootstrap" cssClass="form-horizontal">
<s:textfield name="member" label="User Name"></s:textfield>
<s:textfield name="remarks" label="Remark"></s:textfield>
<s:textfield name="marks" label="Marks"></s:textfield>
<s:submit value="submit"></s:submit>
</s:form>


</div>
</body>
</html>