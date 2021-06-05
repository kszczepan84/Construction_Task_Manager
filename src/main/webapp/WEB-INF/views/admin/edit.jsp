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
<div class="container">

    <form:form method="post" modelAttribute="user" action="/admin/employee/edit" class="well form-horizontal" id="contact_form">
        <form:hidden path="id" value="${id}"/>
    <fieldset>

        <!-- Form Name -->
        <legend>
            <center><h2><b>Edit employee data</b></h2></center>
        </legend>
        <br>

        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">First Name</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="firstName" value="${firstName}" class="form-control" type="text"/>
                    <form:errors path="firstName" class="error"/>
                </div>
            </div>
        </div>

        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Last Name</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="lastName" value="${lastName}" class="form-control" type="text"/>
                    <form:errors path="lastName" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">PESEL</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="pesel" value="${pesel}" class="form-control" type="text"/>
                    <form:errors path="pesel" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">E-Mail</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                    <form:input path="email" value="${email}" class="form-control" type="text"/>
                    <form:errors path="email" class="error"/>
                </div>
            </div>
        </div>


        <div class="form-group">
            <label class="col-md-4 control-label">Contact No.</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                    <form:input path="phoneNr" value="${phoneNr}" class="form-control" type="text"/>
                    <form:errors path="phoneNr" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Postal Code</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="postalCode" value="${postalCode}" class="form-control" type="text"/>
                    <form:errors path="postalCode" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Street Name</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="street" value="${street}" class="form-control" type="text"/>
                    <form:errors path="street" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Street Number</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="streetNr" value="${streetNr}" class="form-control" type="text"/>
                    <form:errors path="streetNr" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">House Number</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="houseNr" value="${houseNr}" class="form-control" type="text"/>
                    <form:errors path="houseNr" class="error"/>
                </div>
            </div>
        </div>


        <div class="form-group">
            <label class="col-md-4 control-label">Position</label>
            <div class="col-md-4 selectContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                    <form:select path="positions" items="${positions}" multiple="false"
                                 class="form-control selectpicker"/>
                </div>
            </div>
        </div>

        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Username</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="username" value="${username}" class="form-control" type="text"/>
                    <form:errors path="username" class="error"/>
                </div>
            </div>
        </div>

        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Password</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="password" type="password" value="${password}" class="form-control"/>
                    <form:errors path="password" class="error"/>
                </div>
            </div>
        </div>

        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Employee additional information</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:textarea path="description" value="${description}" class="form-control" rows="4" cols="30"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Skills</label>
            <div class="col-md-4 selectContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                    <form:checkbox path="skills" value="${skills.get(0)}" label="machine operating"/>
                    <br>
                    <form:checkbox path="skills" value="${skills.get(1)}" label="office work"/>
                    <br>
                    <form:checkbox path="skills" value="${skills.get(2)}" label="supervising"/>
                    <br>
                    <form:checkbox path="skills" value="${skills.get(3)}" label="Health&Safety course"/>
                    <br>
                </div>
            </div>
        </div>


        <!-- Select Basic -->

        <!-- Success message -->

        <!-- Button -->
        <div>
            <table class="center">
                <tr>
                    <td>
                        <div class="form-group">
                            <label class="col-md-4 control-label"></label>
                            <div class="col-md-4"><br>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <button type="submit" class="btn btn-success">
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT
                                    <span
                                            class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                </button>

                            </div>
                        </div>
                        </form:form>
                    </td>
                    <td>
                        <form action="${pageContext.request.contextPath}/admin/employee/list">
                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4"><br>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                    <button type="submit" class="btn btn-warning">
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspRETURN <span
                                            class="glyphicon glyphicon-share-alt"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                    </button>

                                </div>
                            </div>
                        </form>

                    </td>


                </tr>

            </table>
        </div>


    </fieldset>

</div>
</body>
</html>



















<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: krzysztof--%>
<%--  Date: 18.05.2021--%>
<%--  Time: 14:40--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Edit employee</title>--%>
<%--    <link rel="stylesheet" type="text/css" href="/style.css">--%>
<%--</head>--%>
<%--<c:import url="/WEB-INF/views/homepage/header.jsp"/>--%>
<%--<body>--%>
<%--<form:form method="post" modelAttribute="user" action="/admin/employee/edit">--%>
<%--    <form:hidden path="id" value="${id}"/>--%>
<%--    <table>--%>
<%--        <tr>--%>
<%--            <th>Edit first name:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="firstName" value="${firstName}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td class="">--%>
<%--                <form:errors path="firstName" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit last name:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="lastName" value="${lastName}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <form:errors path="lastName" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit PESEL:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="pesel" value="${pesel}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <form:errors path="pesel" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit email:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="email" value="${email}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <form:errors path="email" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit phone number:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="phoneNr" value="${phoneNr}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <form:errors path="phoneNr" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit postal code:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="postalCode" value="${postalCode}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <form:errors path="postalCode" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit position:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:select path="positions" items="${positions}" multiple="false"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit street:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="street" value="${street}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <form:errors path="street" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit street number:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="streetNr" value="${streetNr}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <form:errors path="streetNr" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit house number:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="houseNr" value="${houseNr}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td style="color:red">--%>
<%--                <form:errors path="houseNr" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit username:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="username" value="${username}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <form:errors path="username" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit password:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:input path="password" type="password" value="${password}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <form:errors path="password" class="error"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit description:</th>--%>
<%--            <td>--%>
<%--                <label>--%>
<%--                    <form:textarea path="description" rows="4" cols="30" value="${description}"/>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th>Edit skills:</th>--%>
<%--            <td>--%>
<%--                <label class="checkbox">--%>
<%--                        &lt;%&ndash;                    <form:checkboxes path="skills" items="${skills}" multiple="true" />&ndash;%&gt;--%>
<%--                    <form:checkbox path="skills" value="${skills.get(0)}" label="machine operating"/>--%>
<%--                    <br>--%>
<%--                    <form:checkbox path="skills" value="${skills.get(1)}" label="office work"/>--%>
<%--                    <br>--%>
<%--                    <form:checkbox path="skills" value="${skills.get(2)}" label="supervising"/>--%>
<%--                    <br>--%>
<%--                    <form:checkbox path="skills" value="${skills.get(3)}" label="Health&Safety course"/>--%>
<%--                    <br>--%>
<%--                </label>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th style="border: none">--%>
<%--            <td style="border: none">--%>
<%--                <button type="submit" > Confirm</button>--%>
<%--            <a href="<c:url value="/admin/employee/list"/>" style="font-size: medium">return</a>--%>
<%--            </td>--%>

<%--            </th>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--</form:form>--%>
<%--</body>--%>
<%--</html>--%>
