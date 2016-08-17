<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Language</title>
 <link rel="shortcut icon" href="logo.png" />
<link rel="stylesheet" href="css/bootstrap.min.css"></link>
<link rel="stylesheet" href="css/indexSlider.css"></link>
<link rel="stylesheet" href="css/bootstrap-theme.min.css"></link>
<!-- Slider-->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End Slider -->

<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

 <script type="text/javascript">
        $(document).ready(function(){
            $("#myModal").modal('show');
        });
    </script>
    
</head>
<body>

<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Select Your Language /अपनी भासा चुने/Choisissez votre langue</h4>
            </div>
            <div class="modal-body">
                <s:a href="langAc.action?request_locale=en_US">
                <button class="btn btn-primary" value=>English</button>
                </a></s:a>
               <s:a href="langAc.action?request_locale=hi_IN">
                <button class="btn btn-primary">हिंदी</button>
               </s:a>
               <s:a href="langAc.action?request_locale=fr_FR">
                <button class="btn btn-primary">français</button>
               </s:a>
            </div>
            <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
        </div>
    </div>
</div>
<div><h2><s:property value="messege"/></h2></div>
<!-- Slider -->
<div>
<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data1/images/obrfjuajzw_1389752524975.jpg" alt="obRfJuAjZw_1389752524975" title="obRfJuAjZw_1389752524975" id="wows1_0"/></li>
		<li><img src="data1/images/project1.jpg" alt="Project-1" title="Project-1" id="wows1_1"/></li>
		<li><img src="data1/images/project2.png" alt="Project-2" title="Project-2" id="wows1_2"/></li>
		<li><img src="data1/images/project3.jpg" alt="Project-3" title="Project-3" id="wows1_3"/></li>
		<li><a href="http://wowslider.com"><img src="data1/images/project4.jpg" alt="bootstrap slider" title="Project-4" id="wows1_4"/></a></li>
		<li><img src="data1/images/project5.jpg" alt="Project-5" title="Project-5" id="wows1_5"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="obRfJuAjZw_1389752524975"><span><img src="data1/tooltips/obrfjuajzw_1389752524975.jpg" alt="obRfJuAjZw_1389752524975"/>1</span></a>
		<a href="#" title="Project-1"><span><img src="data1/tooltips/project1.jpg" alt="Project-1"/>2</span></a>
		<a href="#" title="Project-2"><span><img src="data1/tooltips/project2.png" alt="Project-2"/>3</span></a>
		<a href="#" title="Project-3"><span><img src="data1/tooltips/project3.jpg" alt="Project-3"/>4</span></a>
		<a href="#" title="Project-4"><span><img src="data1/tooltips/project4.jpg" alt="Project-4"/>5</span></a>
		<a href="#" title="Project-5"><span><img src="data1/tooltips/project5.jpg" alt="Project-5"/>6</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com/vi">bootstrap slider</a> by WOWSlider.com v8.7</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
</div>
<!-- End Slider -->
</body>
</html>