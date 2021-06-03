<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 18.05.2021
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Assign objective</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<%--<form method="post" action="/supervisor">--%>

Here will be instructions for workers, website in progress...
<body>
<%--<table>--%>
<%--    <tr>--%>
<%--        <th> Assigned task for ${user}:</th>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>--%>

<%--            <c:forEach items="${user.objectives}" var="item" varStatus="status">--%>
<%--                <input  name="objectiveOldStatus" type="hidden" value="${item.id}">--%>
<%--                ${item.name}--%>
<%--            <br>--%>
<%--                ${item.description}--%>
<%--            <br>--%>
<%--            From:--%>
<%--                ${item.startDate} ${item.startHour}--%>
<%--            <br>--%>
<%--            Till:--%>
<%--                ${item.endDate} ${item.endHour}--%>
<%--            <br>--%>
<%--            Objective status:--%>
<%--            <br>--%>
<%--            <c:forEach items="${item.taskStatus}" var="element">--%>
<%--                ${element}--%>
<%--        <th>Edit status:</th>--%>
<%--        <td>--%>
<%--            <label>--%>
<%--                <select name="taskStatusNew">--%>
<%--                    działa--%>
<%--                    <c:forEach items="${taskStatusAll}" var="taskStatus">--%>
<%--                        <option> ${taskStatus}</option>--%>
<%--                    </c:forEach>--%>
<%--                </select>--%>
<%--            </label>--%>
<%--        </td>--%>

<%--        </c:forEach>--%>
<%--        <button type="submit"> Confirm</button>--%>
<%--        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
<%--        <c:if test="${!status.last}">,</c:if>--%>
<%--        </c:forEach>--%>
<%--</table>--%>
<%--<a href="<c:url value="/"/>">return to homepage</a>--%>
<%--</form>--%>
</body>
</html>
