<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: krzysztof--%>
<%--  Date: 20.05.2021--%>
<%--  Time: 10:49--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">--%>
<%--    <title>Manage employees</title>--%>
<%--</head>--%>
<%--<c:import url="/WEB-INF/views/homepage/header.jsp"/>--%>
<%--<body>--%>
<%--<h1>Employee details</h1>--%>
<%--<h1><spring:message code="app.footer"/></h1>--%>

<%--<table>--%>
<%--    <tr>--%>
<%--        <th>Id</th>--%>
<%--        <th>First name</th>--%>
<%--        <th>Last name</th>--%>
<%--        <th>PESEL</th>--%>
<%--        <th>email</th>--%>
<%--        <th>phone number</th>--%>
<%--        <th>postal code</th>--%>
<%--        <th>position</th>--%>
<%--        <th>street</th>--%>
<%--        <th>street number</th>--%>
<%--        <th>house number</th>--%>
<%--        <th>username</th>--%>
<%--        <th>password</th>--%>
<%--        <th>description</th>--%>
<%--        <th>skills</th>--%>
<%--        <th>action</th>--%>
<%--        <th>Set access level</th>--%>
<%--    </tr>--%>
<%--    <c:forEach items="${users}" var="user">--%>
<%--        <tr>--%>
<%--            <td>${user.id}</td>--%>
<%--            <td>${user.firstName}</td>--%>
<%--            <td>${user.lastName}</td>--%>
<%--            <td>${user.pesel}</td>--%>
<%--            <td>${user.email}</td>--%>
<%--            <td>${user.phoneNr}</td>--%>
<%--            <td>${user.postalCode}</td>--%>
<%--            <td>${user.positions.toString()}</td>--%>
<%--            <td>${user.street}</td>--%>
<%--            <td>${user.streetNr}</td>--%>
<%--            <td>${user.houseNr}</td>--%>
<%--            <td>${user.username}</td>--%>
<%--            <td>${user.password}</td>--%>
<%--            <td>${user.description}</td>--%>
<%--            <td>${user.skills}</td>--%>
<%--            <td><a href="<c:url value="/admin/show/${user.id}"/>" class="href">Show</a>--%>
<%--                <a href="<c:url value="/admin/edit/${user.id}"/>">Edit</a>--%>
<%--                <a href="<c:url value="/admin/delete/${user.id}"/>" onclick="return confirm('Are you sure?')">Delete</a>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <a href="<c:url value="/admin/role/set/${user.username}/ROLE_ADMIN"/>" class="href">high</a>--%>
<%--                <a href="<c:url value="/admin/role/set/${user.username}/ROLE_SUPERVISOR"/>" class="href">medium</a>--%>
<%--                <a href="<c:url value="/admin/role/set/${user.username}/ROLE_WORKER"/>" class="href">low</a>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    <tr style="border: none">--%>
<%--        <td style="border: none">--%>
<%--            <a href="<c:url value="/admin/add"/>">Add new employee</a>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manage workers</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
    <link rel="stylesheet" href="<c:url value="/crud.css"/>">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<div class="container">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Employees <b>List</b></h2></div>
                </div>
            </div>
        </div>
        <table class="table table-striped table-hover table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>First name <i class="fa fa-sort"></i></th>
                <th>Last name</th>
                <th>PESEL <i class="fa fa-sort"></i></th>
                <th>Email</th>
                <th>Phone number <i class="fa fa-sort"></i></th>
                <th>Postal Code</th>
                <th>Position</th>
                <th>Street</th>
                <th>Street Number</th>
                <th>House Number</th>
                <th>Username</th>
                <th>Description</th>
                <th>Skills</th>
                <th>Actions</th>
                <th>Set acces level</th>
            </tr>
            </thead>
            <c:forEach items="${users}" var="user">
            <tbody>
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.pesel}</td>
                <td>${user.email}</td>
                <td>${user.phoneNr}</td>
                <td>${user.postalCode}</td>
                <td>
                    <c:forEach items="${user.positions}" var="item" varStatus="status">
                        ${item}<c:if test="${!status.last}">,</c:if>
                    </c:forEach>
                </td>
                <td>${user.street}</td>
                <td>${user.streetNr}</td>
                <td>${user.houseNr}</td>
                <td>${user.username}</td>
                <td>${user.description}</td>
                <td>
                    <c:forEach items="${user.skills}" var="item" varStatus="status">
                        ${item}
                    <c:if test="${!status.last}">,</c:if>
                    </c:forEach>
                <td>
                    <a href="<c:url value="/admin/show/${user.id}"/>" class="view" title="View"
                       data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="<c:url value="/admin/edit/${user.id}"/>" class="edit" title="Edit"
                       data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="<c:url value="/admin/delete/${user.id}"/>" class="delete" title="Delete"
                       data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                </td>
                <td>
                    <a href="<c:url value="/admin/role/set/${user.username}/ROLE_ADMIN"/>" class="href">high</a>
                    <a href="<c:url value="/admin/role/set/${user.username}/ROLE_SUPERVISOR"/>"
                       class="href">medium</a>
                    <a href="<c:url value="/admin/role/set/${user.username}/ROLE_WORKER"/>" class="href">low</a>
                </td>
                </c:forEach>
            </tr>
            <a href="<c:url value="/admin/add"/>">Add new employee</a>
            </tbody>
        </table>
        <%--            <div class="clearfix">--%>
        <%--                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>--%>
        <%--                <ul class="pagination">--%>
        <%--                    <li class="page-item disabled"><a href="#"><i class="fa fa-angle-double-left"></i></a></li>--%>
        <%--                    <li class="page-item"><a href="#" class="page-link">1</a></li>--%>
        <%--                    <li class="page-item"><a href="#" class="page-link">2</a></li>--%>
        <%--                    <li class="page-item active"><a href="#" class="page-link">3</a></li>--%>
        <%--                    <li class="page-item"><a href="#" class="page-link">4</a></li>--%>
        <%--                    <li class="page-item"><a href="#" class="page-link">5</a></li>--%>
        <%--                    <li class="page-item"><a href="#" class="page-link"><i class="fa fa-angle-double-right"></i></a>--%>
        <%--                    </li>--%>
        <%--                </ul>--%>
        <%--            </div>--%>
    </div>
</div>
</div>
</body>
</html>
