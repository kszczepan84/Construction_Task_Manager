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
<html>
<head>
    <title>Add objective</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<form:form method="post" modelAttribute="objective">
    <table>
        <tr>
            <th>Enter objective name:</th>
            <td>
                <label>
                    <form:input path="name"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Enter priority:</th>
            <td>
                <label>
                    <form:select path="priority" items="${priorities}" multiple="false"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Enter status:</th>
            <td>
                <label>
                    <form:select path="taskStatus" items="${statusTasks}" multiple="false"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Enter description:</th>
            <td>
                <label>
                    <form:input path="description"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Enter start date:</th>
            <td>
                <label>
                    <form:input path="startDate" type="date"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Enter end date:</th>
            <td>
                <label>
                    <form:input type="date" path="endDate"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Enter start hour:</th>
            <td>
                <label>
                    <form:input type="time" path="startHour" />
                </label>
            </td>
        </tr>
        <tr>
            <th>Enter end hour:</th>
            <td>
                <label>
                    <form:input type="time" path="endHour" />
                </label>
            </td>
        <tr>
        <tr>
            <th style="border: none">
            <td style="border: none">
                <button type="submit"> Confirm</button>
                <a href="<c:url value="/objective/list"/>" style="font-size: medium">return</a>

            </td>
            </th>
        </tr>
    </table>
</form:form>
</body>
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>
