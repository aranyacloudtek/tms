<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Log in with your account</title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
  </head>

  <body>

    <div class="container col-md-3">
      <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
        </div>
      </form>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html> --%>




<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head> 
  <title> Ticketing Management System</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

      <meta charset="utf-8">
      <title>Log in with your account</title>

      <link href="${contextPath}/resources/css/main.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/util.css" rel="stylesheet">
      
      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
      
      <link href="${contextPath}/resources/images/icons/favicon.ico" rel="icon">
      <%-- <link href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> --%>
      <link href="${contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/fonts/iconic/css/material-design-iconic-font.min.css" rel="stylesheet">
      <%-- <link href="${contextPath}/resources/vendor/animate/animate.css" rel="stylesheet"> --%> 
      <link href="${contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/vendor/animsition/css/animsition.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/vendor/select2/select2.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/vendor/daterangepicker/daterangepicker.css" rel="stylesheet">
  </head>

  <body>

    <div class="container col-md-6">
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
      			<form method="POST" action="${contextPath}/login" class="form-signin">
        
<%--         <div class="form-group ${error != null ? 'has-error' : ''}"> --%>
<%--             <span>${message}</span> --%>
<!--             <input name="username" type="text" class="form-control" placeholder="Username" -->
<!--                    autofocus="true"/> -->
<!--             <input name="password" type="password" class="form-control" placeholder="Password"/> -->
<%--             <span>${error}</span> --%>
<%--             <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> --%>

<!--             <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button> -->
<%--             <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4> --%>
<!--         </div> -->
        <span class="login100-form-title p-b-26">
						Welcome
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<!-- <input class="input100" type="text" name="username"> -->
						<input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
						
						<!-- <span class="focus-input100" data-placeholder="username"></span> -->
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<!-- <input class="input100" type="password" name="pass"> -->
						<input name="password" type="password" class="form-control" placeholder="Password"/>
						<!-- <span class="focus-input100" data-placeholder="Password"></span> -->
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							<button class="login100-form-btn">
								Login
							</button>
						</div>
					</div>
 
 
 					

           <!--  <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button> -->
            
 					
					<div class="text-center p-t-115">
						<span class="txt1">
							Do not have an account?
						</span>
						<h4 class="text-center"><a href="${contextPath}/registration">Sign Up</a></h4>
						<!-- <a class="txt2" href="#">
							Sign Up
						</a> -->
					</div>
      </form>
      </div>
		</div>
	</div>
	
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
  </html>
