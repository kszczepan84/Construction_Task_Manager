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
    <title>Objective details</title>
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<table>
    <tr>
        <th>Id</th>
        <td><c:out value="${objective.id}"/></td>
    </tr>
    <tr>
        <th>Name</th>
        <td>${objective.name}</td>
    </tr>
    <tr>
        <th>Priority</th>
        <td>
            <c:forEach items="${objective.priority}" var="item" varStatus="status">
                ${item}<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <th>Status</th>
        <td>
            <c:forEach items="${objective.taskStatus}" var="item" varStatus="status">
                ${item}<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>${objective.description}</td>
    </tr>
    <tr>
        <th>Start date</th>
        <td>${objective.startDate}</td>
    </tr>
    <tr>
        <th>End date</th>
        <td>${objective.endDate}</td>
    </tr>
    <tr>
        <th>Start hour</th>
        <td>${objective.startHour}</td>
    </tr>
    <tr>
        <th>End hour</th>
        <td>${objective.endHour}</td>
    </tr>
    <tr>
        <th style="border: none">
        <td style="border: none">
            <a href="<c:url value="/objective/list"/>" style="font-size: medium">return</a>
        </td>
        <%--            <form action="<c:url value="/admin/list"/>">--%>
        <%--                <button type="submit" > Return </button>--%>
        <%--            </form>--%>

        </th>
    </tr>

</table>

</body>
</html>
