<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Edit objective</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<form:form method="post" modelAttribute="objective" action="/objective/edit">
    <form:hidden path="id" value="${id}"/>
    <table>
        <tr>
            <th>Edit name:</th>
            <td>
                <label>
                    <form:input path="name" value="${name}"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Edit priority:</th>
            <td>
                <label>
                    <form:select path="priority" items="${priorities}" multiple="false"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Edit status:</th>
            <td>
                <label>
                    <form:select path="taskStatus" items="${statusTasks}" multiple="false"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Edit description:</th>
            <td>
                <label>
                    <form:input path="description" value="${description}"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Edit start date:</th>
            <td>
                <label>
                    <form:input path="startDate" type="date" value="${startDate}"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Edit end date:</th>
            <td>
                <label>
                    <form:input type="date" path="endDate" value="${endDate}"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Edit start hour:</th>
            <td>
                <label>
                    <form:input type="time" path="startHour" value="${startHour}"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Edit end hour:</th>
            <td>
                <label>
                    <form:input type="time" path="endHour" value="${endHour}"/>
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
