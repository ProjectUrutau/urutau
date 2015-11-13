<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Home</title>

<link href="<c:url value='/css/stylesheet.css'/>" rel="stylesheet">

<!-- Bootstrap min css -->
<link href="<c:url value='/css/bootstrap.min.css'/>" rel="stylesheet">

<!-- jQuery -->
<script src="<c:url value='/js/jquery.js'/>"></script>

<!-- Bootstrap Core -->
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>


<script type="text/javascript">
	// when page load
	$(document).ready(function(){
		
		$(".link-frame").click(function() {
			$(".create-requirement").show("slow");
		});
		
		$("#cancel-create-req").click(function() {
			$(".create-requirement").hide("slow");;
		});
		
		$("#list-link").click(function(){
			var listOfItems = $("#item-list");
			
			if(listOfItems.is(":empty")) {
				$.ajax({
				     url:"showAll",
				     type:"GET",
				     success:function(result){
				        listOfItems.html(result);
				     }
				});
				
				$("#list-link").html('<span class="glyphicon glyphicon-chevron-up"></span>');
			} else {
				listOfItems.empty();
				$("#list-link").html('<span class="glyphicon glyphicon-chevron-down"></span>');
			}
		});
	});
</script>

</head>


<body>

	<%@ include file="/WEB-INF/layouts/header.jspf" %>
	<div class="container">
		<div class="collapse navbar-collapse navbar-ex1-collapse column-menu col-md-4 ">
	       
	                        <a href="<c:url value="/project"/>" target="frame-req" class="link-frame">
	                        	New project
	                        </a>
	                   
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-6">
        	<div class="panel panel-default">
		    <div class="panel-heading"> Projetos </div>
		    <div class="panel-body"> 
		    <a href="<c:url value="/?"/>" target="frame-req" class="link-frame">
		    project example 
			</a>
		    </div>
		    </div>
		    
		    <!-- 	<c:forEach items="${projects}" var="project">     -->
		    	<div class="panel-body"> projects names 
		    	
		    	
		    	</div>
		    <!-- 	</c:forEach> -->
      	</div>
	</div>

</body>
</html>