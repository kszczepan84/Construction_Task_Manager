<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Objective details</title>
    <%--    <link rel="stylesheet" type="text/css" href="/style.css">--%>

</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>

<div class="container">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Objective <b>Details</b></h2></div>
                </div>
            </div>
        </div>

        <table class="table table-striped table-hover table-bordered">

            <tr>
                <th>Id</th>
                <td> ${objective.id}</td>
            </tr>
            <tr>
                <th>Name</th>
                <td> ${objective.name}</td>
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
                <td> ${objective.description}</td>
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
        </table>
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
    </div>
</div>
</body>
</html>
