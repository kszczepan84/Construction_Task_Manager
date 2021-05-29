<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 20.05.2021
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">
    <title>Manage workers</title>
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<h1>Employee details</h1>
<%--<h1><spring:message code="app.footer"/></h1>--%>

<table>
    <tr>
        <th>Id</th>
        <th>First name</th>
        <th>Last name</th>
        <th>PESEL</th>
        <th>email</th>
        <th>phone number</th>
        <th>postal code</th>
        <th>position</th>
        <th>street</th>
        <th>street number</th>
        <th>house number</th>
        <th>username</th>
        <th>password</th>
        <th>description</th>
        <th>skills</th>
        <th>action</th>
        <th>Set access level</th>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.pesel}</td>
            <td>${user.email}</td>
            <td>${user.phoneNr}</td>
            <td>${user.postalCode}</td>
            <td>${user.positions.toString()}</td>
            <td>${user.street}</td>
            <td>${user.streetNr}</td>
            <td>${user.houseNr}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>${user.description}</td>
            <td>${user.skills}</td>
            <td><a href="<c:url value="/admin/show/${user.id}"/>" class="href">Show</a>
                <a href="<c:url value="/admin/edit/${user.id}"/>">Edit</a>
                <a href="<c:url value="/admin/delete/${user.id}"/>" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
            <td>
                <a href="<c:url value="/admin/role/set/${user.username}/ROLE_ADMIN"/>" class="href">high</a>
                <a href="<c:url value="/admin/role/set/${user.username}/ROLE_SUPERVISOR"/>" class="href">medium</a>
                <a href="<c:url value="/admin/role/set/${user.username}/ROLE_WORKER"/>" class="href">low</a>
            </td>
        </tr>
    </c:forEach>
    <tr style="border: none">
        <td style="border: none">
            <a href="<c:url value="/admin/add"/>">Add new employee</a>
        </td>
    </tr>
</table>
</body>
</html>
