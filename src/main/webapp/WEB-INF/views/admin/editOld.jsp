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
    <title>Edit employee</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<form:form method="post" modelAttribute="user" action="/admin/employee/edit">
    <form:hidden path="id" value="${id}"/>
    <table>
        <tr>
            <th>Edit first name:</th>
            <td>
                <label>
                    <form:input path="firstName" value="${firstName}"/>
                </label>
            </td>
            <td class="">
                <form:errors path="firstName" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit last name:</th>
            <td>
                <label>
                    <form:input path="lastName" value="${lastName}"/>
                </label>
            </td>
            <td>
                <form:errors path="lastName" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit PESEL:</th>
            <td>
                <label>
                    <form:input path="pesel" value="${pesel}"/>
                </label>
            </td>
            <td>
                <form:errors path="pesel" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit email:</th>
            <td>
                <label>
                    <form:input path="email" value="${email}"/>
                </label>
            </td>
            <td>
                <form:errors path="email" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit phone number:</th>
            <td>
                <label>
                    <form:input path="phoneNr" value="${phoneNr}"/>
                </label>
            </td>
            <td>
                <form:errors path="phoneNr" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit postal code:</th>
            <td>
                <label>
                    <form:input path="postalCode" value="${postalCode}"/>
                </label>
            </td>
            <td>
                <form:errors path="postalCode" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit position:</th>
            <td>
                <label>
                    <form:select path="positions" items="${positions}" multiple="false"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Edit street:</th>
            <td>
                <label>
                    <form:input path="street" value="${street}"/>
                </label>
            </td>
            <td>
                <form:errors path="street" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit street number:</th>
            <td>
                <label>
                    <form:input path="streetNr" value="${streetNr}"/>
                </label>
            </td>
            <td>
                <form:errors path="streetNr" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit house number:</th>
            <td>
                <label>
                    <form:input path="houseNr" value="${houseNr}"/>
                </label>
            </td>
            <td style="color:red">
                <form:errors path="houseNr" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit username:</th>
            <td>
                <label>
                    <form:input path="username" value="${username}"/>
                </label>
            </td>
            <td>
                <form:errors path="username" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit password:</th>
            <td>
                <label>
                    <form:input path="password" type="password" value="${password}"/>
                </label>
            </td>
            <td>
                <form:errors path="password" class="error"/>
            </td>
        </tr>
        <tr>
            <th>Edit description:</th>
            <td>
                <label>
                    <form:textarea path="description" rows="4" cols="30" value="${description}"/>
                </label>
            </td>
        </tr>
        <tr>
            <th>Edit skills:</th>
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
            <th style="border: none">
            <td style="border: none">
                <button type="submit" > Confirm</button>
            <a href="<c:url value="/admin/employee/list"/>" style="font-size: medium">return</a>
            </td>

            </th>
        </tr>
    </table>
</form:form>
</body>
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>
