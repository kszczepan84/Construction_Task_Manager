<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/login.css"/>">
<body>
<div class="wrapper">
    <form class="form-signin" method="post">
        <h2 class="form-signin-heading">Please login</h2>
        <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus=""/>
        <br>
        <input type="password" class="form-control" name="password" placeholder="Password" required=""/>
        <br>
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</div>
</body>
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>