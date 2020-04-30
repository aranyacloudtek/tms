<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    
    
	<script type="text/javascript"
    	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js">
	</script>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
    

    <title>Log in with your account  </title>

    <link href="${contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/static/css/common.css" rel="stylesheet">
</head>

<body>

<div class="container col-md-6" >

    <h2 class="form-heading">Log in</h2>
    
    <form method="POST" action="${contextPath}/login" class="form-signin">

		<div class="col-md-6" >


        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input required name="adid" type="text" class="form-control" placeholder="Username" autofocus="true"/>
            <input required name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span> <br>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<span>${error}</span>
        </div>


		<div class="col-md-6" >

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input required name="adid" type="text" class="form-control" placeholder="Username" autofocus="true"/>
            <input required name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span> <br>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<span>${error}</span>
        </div>

		<button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>

    </form>

</div>
</div>
</div>


<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/static/js/bootstrap.min.js"></script>
</body>


<!-- <script type="text/javascript">
 
    $(document).ready(function() {
        $("#loginForm").validate({
            rules: {
                adid: {
                    required: true,
                    adid: true
                },
         
                password: "required",
            },
             
            messages: {
                adid: {
                    required: "Please enter adid",
                    adid: "Please enter a valid adid"
                },
                 
                password: "Please enter password"
            }
        });
 
    });
</script> -->
</html>