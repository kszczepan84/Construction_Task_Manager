<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manage tasks</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
    <link rel="stylesheet" href="<c:url value="/crud.css"/>">
    <link rel="stylesheet" href="<c:url value="/image.css"/>">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<div class="container">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Objectives <b>List</b></h2></div>
                    <div class="col-sm-8"><h5><a href="<c:url value="/objective/add"/>"><img src="/add_task.png"
                                                                                             alt="add"
                                                                                             title="Add objective"
                                                                                             data-toggle="tooltip"
                                                                                             class="addTask"></a>
                        <a href="<c:url value="/objective/assign"/>"><img src="/assign_objective.png" alt="add"
                                                                          title="Assing employee to objective"
                                                                          data-toggle="tooltip" class="addTask"></a>
                    </h5>
                    </div>
                </div>
            </div>
        </div>
        <table class="table table-striped table-hover table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Priority</th>
                <th>Status</th>
                <th>Description</th>
                <th>Start date</th>
                <th>End date</th>
                <th>Start hour</th>
                <th>End hour</th>
                <th>Actions</th>
            </tr>
            </thead>
            <c:forEach items="${objectives}" var="objective">
            <tbody>
            <tr>
                <td>${objective.id}</td>
                <td>${objective.name}</td>
                <td>
                    <c:forEach items="${objective.priority}" var="item" varStatus="status">
                        ${item}<c:if test="${!status.last}">,</c:if>
                    </c:forEach>
                </td>
                <td>
                    <c:forEach items="${objective.taskStatus}" var="item" varStatus="status">
                        ${item}<c:if test="${!status.last}">,</c:if>
                    </c:forEach>
                </td>
                <td>${objective.description}</td>
                <td>${objective.startDate}</td>
                <td>${objective.endDate}</td>
                <td>${objective.startHour}</td>
                <td>${objective.endHour}</td>
                <td>
                    <a href="<c:url value="/objective/show/${objective.id}"/>" class="view" title="View"
                       data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="<c:url value="/objective/edit/${objective.id}"/>" class="edit" title="Edit"
                       data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="<c:url value="/objective/delete/${objective.id}"/>" class="delete" title="Delete"
                       data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                </td>
                </c:forEach>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</div>
</body>
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>
