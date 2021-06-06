<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Employee details</title>
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>

<div class="container">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Employee <b>Details</b></h2></div>
                </div>
            </div>
        </div>

        <table class="table table-striped table-hover table-bordered">
            <thead>
            <tr>
                <th>First name</th>
                <td> ${user.firstName}</td>
            </tr>
            <tr>
                <th>Last name</th>
                <td> ${user.lastName}</td>
            </tr>
            <tr>
                <th>PESEL</th>
                <td> ${user.pesel}</td>
            </tr>
            <tr>
                <th>Email</th>
                <td> ${user.email}</td>
            </tr>
            <tr>
                <th>Phone number</th>
                <td> ${user.phoneNr}</td>
            </tr>
            <tr>
                <th>Postal Code</th>
                <td> ${user.postalCode}</td>
            </tr>
            <tr>
                <th>Position</th>
                <td >
                    <c:forEach items="${user.positions}" var="item" varStatus="status">
                        <ul>
                            <li>
                                    ${item}
                                <c:if test="${!status.last}">,</c:if>
                            </li>

                        </ul>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <th>Street</th>
                <td> ${user.street}</td>
            </tr>
            <tr>
                <th>Street Number</th>
                <td> ${user.streetNr}</td>
            </tr>
            <tr>
                <th>House Number</th>
                <td> ${user.houseNr}</td>
            </tr>
            <tr>
                <th>Username</th>
                <td> ${user.username}</td>
            </tr>
            <tr>
                <th>Description</th>
                <td> ${user.description}</td>
            </tr>
            <tr>
                <th>Skills</th>
                <td>
                    <c:forEach items="${user.skills}" var="item" varStatus="status">
                        <ul>
                            <li>
                                    ${item}
                                <c:if test="${!status.last}">,</c:if>
                            </li>

                        </ul>
                    </c:forEach>
                </td>
            </tr>

        </table>
        <form action="/admin/employee/list">
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
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>

