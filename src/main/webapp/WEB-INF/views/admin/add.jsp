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
<div class="container">

    <form:form method="post" modelAttribute="user" class="well form-horizontal" id="contact_form">
    <fieldset>

        <!-- Form Name -->
        <legend>
            <center><h2><b>Add new employee</b></h2></center>
        </legend>
        <br>

        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">First Name</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="firstName" placeholder="First Name" class="form-control" type="text"/>
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
                    <form:input path="lastName" placeholder="Last Name" class="form-control" type="text"/>
                    <form:errors path="lastName" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">PESEL</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="pesel" placeholder="PESEL" class="form-control" type="text"/>
                    <form:errors path="pesel" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">E-Mail</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                    <form:input path="email" placeholder="E-Mail Address" class="form-control" type="text"/>
                    <form:errors path="email" class="error"/>
                </div>
            </div>
        </div>


        <div class="form-group">
            <label class="col-md-4 control-label">Contact No.</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                    <form:input path="phoneNr" placeholder="(+48)" class="form-control" type="text"/>
                    <form:errors path="phoneNr" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Postal Code</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="postalCode" placeholder="" class="form-control" type="text"/>
                    <form:errors path="postalCode" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Street Name</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="street" placeholder="" class="form-control" type="text"/>
                    <form:errors path="street" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Street Number</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="streetNr" placeholder="" class="form-control" type="text"/>
                    <form:errors path="streetNr" class="error"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">House Number</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="houseNr" placeholder="" class="form-control" type="text"/>
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
                    <form:input path="username" placeholder="Username" class="form-control" type="text"/>
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
                    <form:input path="password" type="password" placeholder="Password" class="form-control"/>
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
                    <form:textarea path="description" placeholder="" class="form-control" rows="4" cols="30"/>
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
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>