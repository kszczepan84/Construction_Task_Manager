<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manage workers</title>
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
                    <div class="col-sm-8"><h2>Employees <b>List</b></h2></div>
                    <div class="col-sm-8"><h5> <a href="<c:url value="/admin/employee/add"/>"><img src="/add_employee.png" alt="add" title="Add" data-toggle="tooltip" class="addEmployee"></a></h5></div>
                </div>
            </div>
        </div>

        <table class="table table-striped table-hover table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>First name</th>
                <th>Last name</th>
                <th>PESEL</th>
                <th>Email</th>
                <th>Phone number</th>
                <th>Postal Code</th>
                <th>Position</th>
                <th>Street</th>
                <th>Street Number</th>
                <th>House Number</th>
                <th>Username</th>
                <th>Description</th>
                <th>Skills</th>
                <th>Actions</th>
                <th>Access lvl</th>
                <th>Set acces level</th>
            </tr>
            </thead>
            <c:forEach items="${users}" var="user">
            <tbody>
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.pesel}</td>
                <td>${user.email}</td>
                <td>${user.phoneNr}</td>
                <td>${user.postalCode}</td>
                <td>
                    <c:forEach items="${user.positions}" var="item" varStatus="status">
                        ${item}<c:if test="${!status.last}">,</c:if>
                    </c:forEach>
                </td>
                <td>${user.street}</td>
                <td>${user.streetNr}</td>
                <td>${user.houseNr}</td>
                <td>${user.username}</td>
                <td>${user.description}</td>
                <td>
                    <c:forEach items="${user.skills}" var="item" varStatus="status">
                        ${item}
                    <c:if test="${!status.last}">,</c:if>
                    </c:forEach>
                <td>
                    <a href="<c:url value="/admin/employee/show/${user.id}"/>" class="view" title="View"
                       data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="<c:url value="/admin/employee/edit/${user.id}"/>" class="edit" title="Edit"
                       data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="<c:url value="/admin/employee/delete/${user.id}"/>" class="delete" title="Delete"
                       data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                </td>
                <td>
                    <c:forEach items="${user.roles}" var="item" varStatus="status">
                        ${item}
                        <c:if test="${!status.last}">,</c:if>
                    </c:forEach>
                </td>
                <td>
                    <a href="<c:url value="/admin/role/set/${user.username}/ROLE_ADMIN"/>" class="href">high</a>
                    <a href="<c:url value="/admin/role/set/${user.username}/ROLE_SUPERVISOR"/>"
                       class="href">medium</a>
                    <a href="<c:url value="/admin/role/set/${user.username}/ROLE_WORKER"/>" class="href">low</a>
                </td>
                </c:forEach>
            </tr>

            </tbody>
        </table>
    </div>
</div>
</div>
</body>
</html>
