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

#section1 {
	padding-top: 50px;
	height: 500px;
	color:#212F3D  ;
	background-color:#D7DBDD;
}

#section2 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: white;
}
#section3 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: white;
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
</style>
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

						</li>
					</ul>
				</div>
			</div>
		</div>
	</nav>



	<div id="section1" class="container-fluid">
		<div class="container">

			<div class="row">

                    <div class="col-sm-3">
					<label for="inputState">Ticket type</label> <select id="inputState" class="form-control">
						<option selected>Ticket type</option>
						<option>Project/Deploy</option>
						<option>Redeploy</option>
						<option>Bounce</option>
						<option>Request</option>
						<option>Branch Request</option>
						<option>Configuration/Adhoc</option>
						<option>Git Repo Acess</option>
						<option>Properties Change</option>
					</select>
				</div>


<!-- 				<div class="col-sm-3"> -->
<!-- 					<strong>Ticket ID</strong><input id="ticketId" name="ticketId" placeholder="Ticket ID" -->
<!-- 						class="form-control" required="true" value="" type="text"> -->
<!-- 				</div> -->
				
<!-- 				<div class="col-sm-3"> -->
<!-- 					<strong>APP ID</strong><input id="appid" name="appid" placeholder="App ID" -->
<!-- 						class="form-control" required="true" value="" type="text"> -->
<!-- 				</div> -->
				<div class="col-sm-3">
					<strong>Branch Name</strong><input id="BranchName" name="BranchName" placeholder="BranchName"
						class="form-control" required="true" value="" type="text">
				</div>
			</div>


			<div class="row">
				<div class="col-sm-3">
					<strong>PROJECT</strong><input id="project" name="project" placeholder="Project"
						class="form-control" required="true" value="" type="text">
				</div>

				<div class="col-sm-3">
					<strong>APPROVED BY</strong><input id="approved by" name="approved by" placeholder="Approved by"
						class="form-control" required="true" value="" type="text">
				</div>

				<div class="row">
				<div class="col-sm-3">
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
			</div>



			<div class="row">
				<div class="col-sm-3">
					<label for="inputState">Priority</label> <select id="inputState"
						class="form-control">
						<option selected>Priority</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
					</select>
				</div>

				
				
				
				<div class="col-sm-3">
					<strong>Scrum Team</strong><input id="Scrum Team" name="Scrum Team" placeholder="Scrum Team"
						class="form-control" required="true" value="" type="text">
				</div>
			</div>
			
			
			<div class="col-sm-3">
					<label for="inputState">Environment</label> <select id="inputState"
						class="form-control">
						<option selected>Environment</option>
						<option>Dev</option>
						<option>SIT</option>
						<option>STAGE</option>
						<option>Prod</option>
						
					</select>
				</div>

                   <div class="col-sm-3">
					<label for="inputState">Deployment Window</label> <select id="inputState"
						class="form-control">
						<option selected>Deployment Window</option>
						<option>Morning</option>
						<option>Afternoon</option>
						
					</select>
				</div>



			<label class="col-md-8 control-label">Ticket Description </label>
			<div class="col-md-8 ">
				<textarea class="span10" rows="2" cols="150"
					placeholder="Ticket Description" required></textarea>
			</div>

			<br></br> <br></br> <br></br>

			<div class="col-sm-12 text-center">
				<a href=welcome class="btn btn-primary btn-md" role="button">
					<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> Submit </a> 
				<button class="btn btn-danger btn-md">
				<span class="glyphicon glyphicon-erase" aria-hidden="true"></span> Clear</button>
			</div>


		</div>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></script>
		<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
