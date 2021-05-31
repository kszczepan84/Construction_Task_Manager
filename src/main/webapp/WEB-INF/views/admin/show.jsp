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
    <title>Worker details</title>
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<table>
    <tr>
        <th>Id</th>
        <td><c:out value="${user.id}"/></td>
    </tr>
    <tr>
        <th>First name</th>
        <td>${user.firstName}</td>
    </tr>
    <tr>
        <th>Last name</th>
        <td>${user.lastName}</td>
    </tr>
    <tr>
        <th>PESEL</th>
        <td>${user.pesel}</td>
    </tr>
    <tr>
        <th>email</th>
        <td>${user.email}</td>
    </tr>
    <tr>
        <th>phone number</th>
        <td>${user.phoneNr}</td>
    </tr>
    <tr>
        <th>postal code</th>
        <td>${user.postalCode}</td>
    </tr>
    <tr>
        <th>position</th>
        <td>
            <c:forEach items="${user.positions}" var="item" varStatus="status">
                ${item}<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <th>street</th>
        <td>${user.street}</td>
    </tr>
    <tr>
        <th>street number</th>
        <td>${user.streetNr}</td>
    </tr>
    <tr>
        <th>house number</th>
        <td>${user.houseNr}</td>
    </tr>
    <tr>
        <th>username</th>
        <td>${user.username}</td>
    </tr>
    <tr>
        <th>description</th>
        <td>${user.description}</td>
    </tr>
    <tr>
        <th>skills</th>
        <td>
            <c:forEach items="${user.skills}" var="item" varStatus="status">
                ${item}<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <th style="border: none">
        <td style="border: none">
            <a href="<c:url value="/admin/list"/>" style="font-size: medium">return</a>
        </td>
        <%--            <form action="<c:url value="/admin/list"/>">--%>
        <%--                <button type="submit" > Return </button>--%>
        <%--            </form>--%>

        </th>
    </tr>

</table>

</body>
</html>
