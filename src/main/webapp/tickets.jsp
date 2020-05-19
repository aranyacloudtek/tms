<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Ticket Management System</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>





<style>
body {
	position: relative;
}

#section0 {
	
	padding-top: 90px;
	height: 170px;
	color:#212F3D  ;
	background-color: #a3a3a3;
}

#section1 {
	
	padding-top: 30px;
	height: 350px;
	color:#212F3D  ;
	background-color: #D7DBDD;
}

#section2 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: #D7DBDD;
}
#section3 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: #a3a3a3;
}
#section4 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: white;
}
#section5 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: white;
}

.required {
  color: red;
}
</style>


<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
$(document).ready(function(){
    $("select").change(function(){
        $(this).find("option:selected").each(function(){
            var optionValue = $(this).attr("value");
            if(optionValue){
                $(".box").not("." + optionValue).hide();
                $("." + optionValue).show();
            } else{
                $(".box").hide();
            }
        });
    }).change();
});
</script>



</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Ticket Management System</a>
			</div>
			<div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li><a href="#section1">SUBMIT A TICKET</a></li>
						<li><a href="#section2">DASHBOARD</a></li>
						<li><a href="#section2">OPERATIONS DASHBOARD</a></li>
						<li><a href="#section2">REPORTS</a></li>
						<li><a href="#section2">ADMIN</a></li>

			
					</ul>
				</div>
			</div>
		</div>
	</nav>



	<div id="section0" class="container-fluid" >
		<div class="container">

			

                    <div class="col-sm-3">
					<label for="inputState">Ticket type</label> <select id="inputState" class="form-control">
						<option selected>Choose Ticket type</option>
						<option value="type">Ticket type</option>
						<option value="deploy">Project/Deploy</option>
						<option value="redeploy">Redeploy</option>
						<option value="bounce">Bounce Request</option>
						
						<option value="branch">New Branch Request</option>
						<option value="config">Configuration/Adhoc</option>
						<option value="gitrepo">Git Repo Acess</option>
						<option value="properties">Properties Change</option>
					</select>
				</div>
				
				</div>
				</div>
				
				
				
		<div id="section1" class="container-fluid" >
		<div class="container">
		
			

				
				<!-- type show box  -->

				
				<div class="type box col-sm-3">
				
					<strong>Branch Name <span class="required">*</span></strong><input id="BranchName" name="BranchName" placeholder="BranchName"
						class="form-control" required="true" value="" type="text">
				
					<strong>PROJECT</strong><input id="project" name="project" placeholder="Project"
						class="form-control" required="true" value="" type="text">
				
				
				
					<strong>APPROVED BY</strong><input id="approved by" name="approved by" placeholder="Approved by"
						class="form-control" required="true" value="" type="text">

					<label for="inputState">Status</label> <select id="inputState"
						class="form-control">
						<option selected>Status</option>
						<option>Null</option>
						<option>Accepted </option>
						<option>Assigned </option>
						<option>Rejected </option>
						<option>Pending </option>
						<option>Work In Progress (WIP)</option>
						<option>Completed</option>
					</select>
					
					</div>

					<div class="type box col-sm-3">
					
					<label for="inputState">Priority</label> <select id="inputState"
						class="form-control">
						<option selected>Priority</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
					</select>
					
					<strong>Scrum Team</strong><input id="Scrum Team" name="Scrum Team" placeholder="Scrum Team"
					class="form-control" required="true" value="" type="text">
					
					<label for="inputState">Environment</label> <select id="inputState"
						class="form-control">
						<option selected>Environment</option>
						<option>Dev</option>
						<option>SIT</option>
						<option>STAGE</option>
						<option>Prod</option>
						
					</select>
					
					<label for="inputState">Deployment Window</label> <select id="inputState"
						class="form-control">
						<option selected>Deployment Window</option>
						<option>Morning</option>
						<option>Afternoon</option>
						
					</select>
					
					</div>

					<div class="type box col-sm-3">
					
					
					<label class="col-md-8 control-label">Ticket Description </label>
			
					<textarea class="span10" rows="10" cols="50"
					placeholder="Ticket Description" required></textarea>
					
					
					<br></br> 
							
					<a href=welcome class="btn btn-primary btn-md" role="button">
					<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> Submit Form </a> 
					<button class="btn btn-danger btn-md">
					<span class="glyphicon glyphicon-erase" aria-hidden="true"></span> Clear Form</button>
							
					
				</div>
				
				
				<!-- deploy show box  -->
				
				 <div class="deploy box col-sm-3">
    
    
    			 	<form:form method="POST" modelAttribute="ticketForm" class="form-signin">
    				<strong>Scrum Team</strong>
    				
    				
    				<input id="Scrum Team" name="Scrum Team" placeholder="Scrum Team"
					class="form-control" required="true" value="" type="text">
					
					
					
					<spring:bind path="project">
					<strong>PROJECT</strong><form:input id="project" path="project" name="project" placeholder="Project"
						class="form-control" required="true" value="" type="text"></form:input>
					 </spring:bind>
					
					
					<spring:bind path="branch">
					<strong>Branch Name</strong><form:input id="BranchName" path="branch" name="BranchName" placeholder="BranchName"
						class="form-control" required="true" value="" type="text"></form:input>
					</spring:bind>
				
					<spring:bind path="approved_by">
					<strong>APPROVED BY</strong><form:input id="approved by" path="approved_by" name="approved by" placeholder="Approved by"
						class="form-control" required="true" value="" type="text"></form:input>
					</spring:bind>
					
					
					
						</form:form>
					</div>
					
					<div class="deploy box col-sm-3">		
					<label for="inputState">Environment</label> <select id="inputState"
						class="form-control">
						<option selected>Environment</option>
						<option>Dev</option>
						<option>SIT</option>
						<option>STAGE</option>
						<option>Prod</option>
						
					</select>
					
					<label for="inputState">Deployment Window</label> <select id="inputState"
						class="form-control">
						<option selected>Deployment Window</option>
						<option>Morning</option>
						<option>Afternoon</option>
						
					</select>
					
					
					</div>
					
					<div class="deploy box col-sm-3">
					
					<label class="col-md-8 control-label">Ticket Description </label>
			
					<textarea class="span10" rows="10" cols="50"
					placeholder="Ticket Description" required></textarea>
					
					
					<br></br>  
					
					<a href=welcome class="btn btn-primary btn-md" role="button">
					<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> Submit Form </a> 
					<button class="btn btn-danger btn-md">
					<span class="glyphicon glyphicon-erase" aria-hidden="true"></span> Clear Form</button>
					
					
   					 </div> 
   					 
   					 
   					 <!-- redeploy show box  -->
				
					<div class="redeploy box col-sm-3">
    
    				
    				<strong>Scrum Team</strong><input id="Scrum Team" name="Scrum Team" placeholder="Scrum Team"
					class="form-control" required="true" value="" type="text">
					
					<strong>PROJECT</strong><input id="project" name="project" placeholder="Project"
						class="form-control" required="true" value="" type="text">

						
					<strong>Branch Name</strong><input id="BranchName" name="BranchName" placeholder="BranchName"
						class="form-control" required="true" value="" type="text">
				
					<strong>APPROVED BY</strong><input id="approved by" name="approved by" placeholder="Approved by"
						class="form-control" required="true" value="" type="text">
					</div>
						
					<div class="redeploy box col-sm-3">	
					<label for="inputState">Environment</label> <select id="inputState"
						class="form-control">
						<option selected>Environment</option>
						<option>Dev</option>
						<option>SIT</option>
						<option>STAGE</option>
						<option>Prod</option>
						
					</select>
					
					<label for="inputState">Deployment Window</label> <select id="inputState"
						class="form-control">
						<option selected>Deployment Window</option>
						<option>Morning</option>
						<option>Afternoon</option>
						
					</select>
					
				 	<br></br> 
					<a href=welcome class="btn btn-primary btn-md" role="button">
					<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> Submit Form </a> 
					<button class="btn btn-danger btn-md">
					<span class="glyphicon glyphicon-erase" aria-hidden="true"></span> Clear Form</button>
				
   					 </div>
   					 
   					 
   					  <!-- bounce show box  -->
				
					<div class="bounce box col-sm-3">
    
    				
    				<strong>Scrum Team</strong><input id="Scrum Team" name="Scrum Team" placeholder="Scrum Team"
					class="form-control" required="true" value="" type="text">
					
					<strong>PROJECT</strong><input id="project" name="project" placeholder="Project"
						class="form-control" required="true" value="" type="text">

						
					<strong>Branch Name</strong><input id="BranchName" name="BranchName" placeholder="BranchName"
						class="form-control" required="true" value="" type="text">
				
					<strong>APPROVED BY</strong><input id="approved by" name="approved by" placeholder="Approved by"
						class="form-control" required="true" value="" type="text">
					
					</div>
					
					<div class="bounce box col-sm-3">		
					<label for="inputState">Environment</label> <select id="inputState"
						class="form-control">
						<option selected>Environment</option>
						<option>Dev</option>
						<option>SIT</option>
						<option>STAGE</option>
						<option>Prod</option>
						
					</select>
					
					<label for="inputState">Deployment Window</label> <select id="inputState"
						class="form-control">
						<option selected>Deployment Window</option>
						<option>Morning</option>
						<option>Afternoon</option>
						
					</select>
					
					<br></br> 
					
					<a href=welcome class="btn btn-primary btn-md" role="button">
					<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> Submit Form </a> 
					<button class="btn btn-danger btn-md">
					<span class="glyphicon glyphicon-erase" aria-hidden="true"></span> Clear Form</button>
				
   					 </div>
   					 
   					 
   				<!-- branch show box  -->
				
					<div class="branch box col-sm-3">
				
					<strong>Scrum Team</strong><input id="Scrum Team" name="Scrum Team" placeholder="Scrum Team"
					class="form-control" required="true" value="" type="text">
					
					<strong>PROJECT</strong><input id="project" name="project" placeholder="Project"
						class="form-control" required="true" value="" type="text">
				
					<strong>APPROVED BY</strong><input id="approved by" name="approved by" placeholder="Approved by"
						class="form-control" required="true" value="" type="text">
					</div>
					
					<div class="branch box col-sm-3">
						
					<label class="col-md-8 control-label">Source Branch </label>
			
					<textarea class="span10" rows="3" cols="35"
					placeholder="Source Branch" required></textarea>
					
					<label class="col-md-8 control-label">Destination Branch </label>
			
					<textarea class="span10" rows="3" cols="35"
					placeholder="Destination Branch" required></textarea>
					
					</div>
					
					<div class="branch box col-sm-3">
					
					
					<label class="col-md-8 control-label"> Description </label>
			
					<textarea class="span10" rows="5" cols="50"
					placeholder="Description" required></textarea>
					
					<br></br>  
					
					<a href=welcome class="btn btn-primary btn-md" role="button">
					<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> Submit Form </a> 
					<button class="btn btn-danger btn-md">
					<span class="glyphicon glyphicon-erase" aria-hidden="true"></span> Clear Form</button>
				
					</div>
				
					<!-- config show box  -->
				
				<div class="config box col-sm-3">
				
				<strong>Scrum Team</strong><input id="Scrum Team" name="Scrum Team" placeholder="Scrum Team"
					class="form-control" required="true" value="" type="text">
					
				<strong>PROJECT</strong><input id="project" name="project" placeholder="Project"
						class="form-control" required="true" value="" type="text">
				
				<strong>APPROVED BY</strong><input id="approved by" name="approved by" placeholder="Approved by"
						class="form-control" required="true" value="" type="text">
						
				<label for="inputState">Environment</label> <select id="inputState"
						class="form-control">
						<option selected>Environment</option>
						<option>Dev</option>
						<option>SIT</option>
						<option>STAGE</option>
						<option>Prod</option>
						
					</select>
					</div>
					
					<div class="config box col-sm-3">
					
					<label for="inputState">Deployment Window</label> <select id="inputState"
						class="form-control">
						<option selected>Deployment Window</option>
						<option>Morning</option>
						<option>Afternoon</option>
						
					</select>
					
					<br></br>  
					
					<a href=welcome class="btn btn-primary btn-md" role="button">
					<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> Submit Form </a> 
					<button class="btn btn-danger btn-md">
					<span class="glyphicon glyphicon-erase" aria-hidden="true"></span> Clear Form</button>
				
				
				</div>
				
				<!-- gitrepo show box  -->
				
				<div class="gitrepo box col-sm-3">
				
				<strong>APPROVED BY</strong><input id="approved by" name="approved by" placeholder="Approved by"
						class="form-control" required="true" value="" type="text">
				
				<strong>ACCESS TYPE</strong><input id="approved by" name="approved by" placeholder="Read/Write"
						class="form-control" required="true" value="" type="text">
						
				<strong>REPO DETAILS</strong><input id="approved by" name="approved by" placeholder="Details"
						class="form-control" required="true" value="" type="text">
				
				<strong>EMAIL ADDRESS</strong><input id="approved by" name="approved by" placeholder="@exmple.com"
						class="form-control" required="true" value="" type="text">
				</div>		
				
				<div class="gitrepo box col-sm-3">
						
				<strong>FULL NAME</strong><input id="approved by" name="approved by" placeholder="Name"
						class="form-control" required="true" value="" type="text">
				
				
				<strong>TEAM NAME(S)</strong><input id="approved by" name="approved by" placeholder="Team name"
						class="form-control" required="true" value="" type="text">
						
						<br></br> 
						
				<a href=welcome class="btn btn-primary btn-md" role="button">
					<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> Submit Form </a> 
					<button class="btn btn-danger btn-md">
					<span class="glyphicon glyphicon-erase" aria-hidden="true"></span> Clear Form</button>
				
				
				</div>
				
				
				<!-- properties show box  -->
				
				<div class="properties box col-sm-3">
				
				<strong>Scrum Team</strong><input id="Scrum Team" name="Scrum Team" placeholder="Scrum Team"
					class="form-control" required="true" value="" type="text">
				
				<strong>PROJECT</strong><input id="project" name="project" placeholder="Project"
						class="form-control" required="true" value="" type="text">	
						
				<strong>Branch Name</strong><input id="BranchName" name="BranchName" placeholder="BranchName"
						class="form-control" required="true" value="" type="text">
						
				<label for="inputState">Environment</label> <select id="inputState"
						class="form-control">
						<option selected>Environment</option>
						<option>Dev</option>
						<option>SIT</option>
						<option>STAGE</option>
						<option>Prod</option>
						
				</select>
				</div>
				
				<div class="properties box col-sm-3">
				
				<label class="col-md-8 control-label">Description </label>
			
					<textarea class="span10" rows="6" cols="50"
					placeholder="N/A" required></textarea>
					
					<br></br> 
							
					<a href=welcome class="btn btn-primary btn-md" role="button">
					<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> Submit Form </a> 
					<button class="btn btn-danger btn-md">
					<span class="glyphicon glyphicon-erase" aria-hidden="true"></span> Clear Form</button>
							
				</div>
				
		</div>
		</div>
	
		
				
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></script>
		<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
		
		
		
		
		
</body>

</html>
