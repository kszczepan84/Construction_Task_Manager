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
<html>
<head>
    <title>Add employee</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<form:form method="post" modelAttribute="user">
    <table>
        <tr>
            <th>Enter first name:</th>
            <td>
                <label>
                    <form:input path="firstName"/>
                </label>
            </td>
            <td class="">
                <form:errors path="firstName" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Enter last name:</th>
            <td>
                <label>
                    <form:input path="lastName"/>
                </label>
            </td>
            <td>
                <form:errors path="lastName" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Enter PESEL:</th>
            <td>
                <label>
                    <form:input path="pesel"/>
                </label>
            </td>
            <td>
                <form:errors path="pesel" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Enter email:</th>
            <td>
                <label>
                    <form:input path="email"/>
                </label>
            </td>
            <td>
                <form:errors path="email" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Enter phone number:</th>
            <td>
                <label>
                    <form:input path="phoneNr"/>
                </label>
            </td>
            <td>
                <form:errors path="phoneNr" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Enter postal code:</th>
            <td>
                <label>
                    <form:input path="postalCode"/>
                </label>
            </td>
            <td>
                <form:errors path="postalCode" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Select position:</th>
            <td>
                <label>
                    <form:select path="positions" items="${positions}" multiple="false"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Enter street:</th>
            <td>
                <label>
                    <form:input path="street"/>
                </label>
            </td>
            <td>
                <form:errors path="street" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Enter street number:</th>
            <td>
                <label>
                    <form:input path="streetNr"/>
                </label>
            </td>
            <td>
                <form:errors path="streetNr" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Enter house number:</th>
            <td>
                <label>
                    <form:input path="houseNr"/>
                </label>
            </td>
            <td style="color:red">
                <form:errors path="houseNr" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Enter username:</th>
            <td>
                <label>
                    <form:input path="username"/>
                </label>
            </td>
            <td>
                <form:errors path="username" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Enter password:</th>
            <td>
                <label>
                    <form:input path="password" type="password"/>
                </label>
            </td>
            <td>
                <form:errors path="password" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Enter description:</th>
            <td>
                <label>
                    <form:textarea path="description" rows="4" cols="30"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Select skills:</th>
            <td>
                <label class="checkbox">
                        <%--                    <form:checkboxes path="skills" items="${skills}" multiple="true" />--%>
                    <form:checkbox path="skills" value="${skills.get(0)}" label="machine operating"/>
                    <br>
                    <form:checkbox path="skills" value="${skills.get(1)}" label="office work"/>
                    <br>
                    <form:checkbox path="skills" value="${skills.get(2)}" label="supervising"/>
                    <br>
                    <form:checkbox path="skills" value="${skills.get(3)}" label="Health&Safety course"/>
                    <br>
                </label>
            </td>
        </tr>
        <tr>
        <tr>
            <th style="border: none">
            <td style="border: none">
                <button type="submit"> Confirm</button>
                <a href="<c:url value="/admin/employee/list"/>" style="font-size: medium">return</a>

            </td>
            </th>
        </tr>
    </table>
</form:form>
</body>
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>
