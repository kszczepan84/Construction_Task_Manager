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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Update task status</title>
    <%--            <link rel="stylesheet" type="text/css" href="/style.css">--%>

</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<link rel="stylesheet" type="text/css" href="/center.css">

<body>

<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-8"><h2>Welcome, <b>${user}!</b></h2></div>
            </div>
        </div>
    </div>
    <%--    <form method="post" action="/supervisor">--%>
    <table class="table table-striped table-hover table-bordered table-responsive">
        <tr>
            <th><h4><b>Your tasks for today:</b></h4></th>
            <th><h4><b>Supervisor contact info:</b></h4></th>
        </tr>
        <tr>
            <td>
                <div class="form-group">
                    <c:forEach items="${user.objectives}" var="item" varStatus="status">
                        <c:if test="${today le item.endDate}">
                            <c:if test="${today ge item.startDate}">
                                <br>
                                <b> ${item.name}</b>
                                <br>
                                ${item.description}
                                <br>
                                From:
                                ${item.startDate} ${item.startHour}
                                <br>
                                Till:
                                ${item.endDate} ${item.endHour}
                                <br>
                                Objective status:
                                <br>
                                <c:forEach items="${item.taskStatus}" var="el">
                                    ${el}
                                    <br>
                                </c:forEach>
                                ----------------------------
                                <br>
                            </c:if>
                        </c:if>

                    </c:forEach>
                </div>


            </td>
            <td>
                <div class="form-group">
                    <br>
                    <c:forEach items="${supervisors}" var="supervisor">
                        <c:forEach items="${supervisor.phoneNr}" var="phone">
                            ${supervisor}: ${phone},
                            <c:forEach items="${supervisor.email}" var="email">
                                email: ${email}
                                <br>
                            </c:forEach>
                            <br>
                        </c:forEach>


                    </c:forEach>


                </div>
            </td>
        </tr>
    </table>
</div>

</body>
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>

</html>
