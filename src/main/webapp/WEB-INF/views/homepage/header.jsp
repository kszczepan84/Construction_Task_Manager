<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
      href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<%--<link rel="stylesheet" type="text/css"--%>
<%--      href="<c:url value="style.css"/>">--%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<header>

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#myNavbar">
                    <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Construction Task Manager</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li><a href="<c:url value="/"/>">Home</a></li>
                    <li><a href="<c:url value="/login"/>">Login</a></li>
                    <li><a href="javascript: document.logoutForm.submit()">Logout</a></li>
                    <li><a href="<c:url value="/message/send"/>">Notes</a></li>
                    <li><a href="<c:url value="/chat"/>">Chat</a></li>
                    <li><a href="<c:url value="/worker"/>">Worker Site</a></li>
                    <li><a href="<c:url value="/supervisor"/>">Supervisor Site</a></li>
                    <li><a href="<c:url value="/admin"/>">Manager Site</a></li>
                    <li><a href="<c:url value="/about"/>">About</a></li>


                    <form:form action="${'/logout'}" method="post" hidden="true" name="logoutForm">
                        <input type="submit" value="Logout"/>
                    </form:form>
                </ul>
            </div>
        </div>
    </nav>

</header>
