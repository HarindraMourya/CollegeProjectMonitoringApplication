<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.io.FileInputStream,edu.pma.dto.FacultyDTO,java.io.IOException,org.apache.poi.hssf.usermodel.HSSFSheet,org.apache.poi.hssf.usermodel.HSSFWorkbook,org.apache.poi.ss.usermodel.Cell"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>table</title>
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
   <!--  <script>
    $(document).ready(function()

    		{

    		$("#tblTest td:nth-child(7)").click(function(event){

    		//Prevent the hyperlink to perform default behavior
    		//event.preventDefault();
    		//alert($(event.target).text())
           
    				
    	
    		var $td= $(this).closest('tr').children('td');


    		var name= $td.eq(0).text();

    		var position= $td.eq(1).text();

    		var department= $td.eq(2).text();
    		var domain= $td.eq(3).text();

    		var emailid= $td.eq(4).text();

    		var contactno= $td.eq(5).text();

    		alert(name+position+department+domain+emailid+contactno +"selcted");
    		
    		
    		}

    		);

    		});

    </script> -->
   
    <script>
    function selectAll(chk)
    {
    	
    	if(document.myTable.control.checked==true)
    		{
    		for (i = 0; i < chk.length; i++)
    			chk[i].checked = true ;
    		}else{

    			for (i = 0; i < chk.length; i++)
    			chk[i].checked = false ;
    			}
    	
    }
    function addData(data)
    {
    	
    	 var facultyArr=[];
     		
    	
    	for(i=0;i<data.length;i++){
    	if(data[i].checked==true)
    		{
    		var $td= $(data[i]).closest('tr').children('td');
    		 var faculty={
    	     			name:$td.eq(0).text(),
    	     		    position:$td.eq(1).text(),
    	     		    department:$td.eq(2).text(),
    	     		   domainarea:$td.eq(3).text(),
    	     		    email:$td.eq(4).text(),
    	     		    contactno:$td.eq(5).text()
    	     		};
    	    	 facultyArr.push(faculty);
    		
    		

    		}
    	}
    	/* var index;
    	for(index = 0; index < facultyArr.length; index++) {
    	    var item = facultyArr[index];
    	    alert(item.name + ", " + item.position+" ,"+item.department + ", " + item.domain);
    	} */
    
    	
    //var datObj={};
    var data1 = JSON.stringify(facultyArr);
	document.getElementById("data").value=data1;
	/* console.log(facultyArr); */
  /*   $.ajax({
        url: "/JSONData?teacherData=data1",
        
        dataType: 'json',
        contentType: 'application/json; charset-utf-8',
        type: 'POST',
        async: true,
        success: function (res) {
            console.log(res.data.length);
            for (var i = 0; i < res.data.length; i++) {
                console.log(" " + res.data[i].name + "-" + res.data[i].position + "-" + res.data[i].department + "-    " + res.data[i].domain+ "-" + res.data[i].email+ "-" + res.data[i].contactno  );
            }
        }
    }); */
    	/* var send="table.jsp?x="+facultyArr;
    	location.href=send; */
    }
    function close(){
    	 $("#myTable").attr('action','adminDashboard.jsp');
        }
   
    </script>
   <%--  <jsp:forward page="/servletToJsp" /> --%>
  
</head>
<body>
<div class="box col-md-12">
    <div class="box-inner">
        <div class="box-header well " data-original-title>Select User To be Register</div>
<div class="box-content">
 <form name="myTable" action="multipleFacultyRegistTable.action" method="post">
<table id="tblTest" class="table table-responsive table-striped table-bordered bootstrap-datatable datatable responsive">
    <thead>
    <tr>
        <th>Name</th>
        <th>Position</th>
        <th>Department</th>
        <th>Domain</th>
        <th>Email Id</th>

        <th>Contact No.</th>
        <th>Select All&nbsp;<input type="checkbox" name="control" onClick="selectAll(document.myTable.selectFaculty)"></th>
    </tr>
    </thead>
   
        <tbody >
    <%
  
    try{
    FileInputStream fs = new FileInputStream("H:/uploads/facultyRegistrationData.xls");
	HSSFWorkbook wb = new HSSFWorkbook(fs); //Access the workbook

	HSSFSheet worksheet=wb.getSheetAt(0);
	Cell cell=null;
   
	
	for(int i=1;i<=worksheet.getLastRowNum();i++)
	{
		cell=(Cell) worksheet.getRow(0).getCell((short) 0);
		
		
			%>
			 <tr>
    
        <td><%out.print(worksheet.getRow(i).getCell(0) );%></td>
        <td class="center"><%out.print(worksheet.getRow(i).getCell(1)) ;%></td>
        <td class="center"><%out.print(worksheet.getRow(i).getCell(2) );%></td>
        <td class="center"><%out.print(worksheet.getRow(i).getCell(3) );%> </td>
        <td class="center"><%out.print(worksheet.getRow(i).getCell(4) );%> </td>
        <td class="center"><%out.print((worksheet.getRow(i).getCell(5)).toString().replace("E9", "").replace(".", "")) ;%></td>
        <td class="center"> <input type="checkbox" name="selectFaculty" >&nbsp;Select</td>

    </tr>
    
		<%
	}
    }catch(Exception e)
    {
    	out.println("<h3>This Excel Format is Not Supported,Please Download The  Excel Provided in Previous Page<h3>");
    	out.println("<a href='sampleFormat.xls'><h3>or Click Here</h3></a>");
    }
	%>
   

    </tbody>


</table>

    <div class="form-group">
    <button type="submit" class="btn btn-default" onclick="close()">Cancel</button>
    <button type="submit" class="btn btn-default" name="register" onClick="addData(document.myTable.selectFaculty)">Register</button>
          </div>
    <s:hidden name="teacherData" id="data"></s:hidden>
    </form>
</div>


    </div>
</body>
<script type="text/javascript">

</script>
</html>