<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create an account</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    
      <link href="${contextPath}/resources/css/main.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/util.css" rel="stylesheet">
      <link href="${contextPath}/resources/vendor/animate/animate.css" rel="stylesheet">
      <!-- Used for A icon in the Login Page -->
      <link href="${contextPath}/resources/fonts/iconic/css/material-design-iconic-font.min.css" rel="stylesheet"> 
    
    
</head>
<body>
  <div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Welcome ${pageContext.request.userPrincipal.name}!! You are successfully loggedIn!| </h2>
        
        <div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
						
							<button class="login100-form-btn" onclick="document.forms['logoutForm'].submit()">
								Logout
							</button>
						</div>
					</div>
        
       <!--  <button onclick="document.forms['logoutForm'].submit()">Logout</button> --> 
    </c:if>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>