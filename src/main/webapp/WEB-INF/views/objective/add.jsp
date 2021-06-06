<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Objective</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<div class="container">

    <form:form method="post" modelAttribute="objective" action="/objective/add" class="well form-horizontal"
               id="contact_form">
    <form:hidden path="id" value="${id}"/>
    <fieldset>

        <!-- Form Name -->
        <legend>
            <center><h2><b>Add objective</b></h2></center>
        </legend>
        <br>

        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Add Name</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                    <form:input path="name"  class="form-control" type="text"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Add priority</label>
            <div class="col-md-4 selectContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                    <form:select path="priority" items="${priorities}" multiple="false"
                                 class="form-control selectpicker"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Add task status</label>
            <div class="col-md-4 selectContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                    <form:select path="taskStatus" items="${statusTasks}" multiple="false"
                                 class="form-control selectpicker"/>
                </div>
            </div>
        </div>

        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Add description:</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                    <form:input path="description"  class="form-control" type="text"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Add start date:</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                    <form:input path="startDate" class="form-control" type="date"/>
                </div>
            </div>
        </div>


        <div class="form-group">
            <label class="col-md-4 control-label">Add end date:</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                    <form:input path="endDate"  class="form-control" type="date"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Add start hour:</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                    <form:input path="startHour"  class="form-control" type="time"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label">Add end hour:</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                    <form:input path="endHour"  class="form-control" type="time"/>
                </div>
            </div>
        </div>

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
                        <form action="${pageContext.request.contextPath}/objective/list">
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
