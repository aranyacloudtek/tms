<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Create an account</title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/main.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/util.css" rel="stylesheet">
      <link href="${contextPath}/resources/vendor/animate/animate.css" rel="stylesheet">
      <!-- Used for A icon in the Login Page -->
      <link href="${contextPath}/resources/fonts/iconic/css/material-design-iconic-font.min.css" rel="stylesheet"> 
  </head>

  <body>

    <div class="container col-md-8">
    	<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100">

        <form:form method="POST" modelAttribute="userForm" class="form-signin">
            <!-- <h4 class="form-signin-heading">Create your account</h4>
 -->           
 					<span class="login100-form-title p-b-26">
						Create Account
					</span>
 						 <span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>
            <spring:bind path="adid">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="adid" class="form-control" placeholder="Username"
                                autofocus="true"></form:input>
                    <form:errors path="adid"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="first_name">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="first_name" class="form-control"
                                placeholder="First Name"></form:input>
                    <form:errors path="first_name"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="last_name">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="last_name" class="form-control"
                                placeholder="Last Name"></form:input>
                    <form:errors path="last_name"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="email_id">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="email_id" class="form-control"
                                placeholder="Email ID"></form:input>
                    <form:errors path="email_id"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="mobile">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="mobile" class="form-control"
                                placeholder="Mobile Number"></form:input>
                    <form:errors path="mobile"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="country">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="country" class="form-control"
                                placeholder="Country"></form:input>
                    <form:errors path="country"></form:errors>
                </div>
            </spring:bind>
            
            
            <div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> --%>
							<button class="login100-form-btn">
								Submit
							</button>
						</div>
					</div>
            

           <!--  <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button> -->
        </form:form>
         </div>
		</div>
	</div>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html>