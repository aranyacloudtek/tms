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
    
    <script
  		src="https://code.jquery.com/jquery-3.4.1.min.js"
 	    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
	<script type="text/javascript"
    	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
    

    <title>Log in with your account  </title>

    <link href="${contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/static/css/common.css" rel="stylesheet">
</head>

<body>

<div class="container col-md-3" >

<form:form method="POST" action="${contextPath}/login1" modelAttribute="user">
    <form:label path="adid">UserID:</form:label>
    <form:input path="name" />
     
    <form:label path="id">Password:</form:label>
    <form:input path="id" />
     
    <input type="submit" value="Submit" />
</form:form>



    <form method="POST" action="${contextPath}/login1" class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input required name="adid" type="text" class="form-control" placeholder="Username" autofocus="true"/>
            <input required name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span> <br>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<span>${error}</span>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
        </div>

    </form>

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