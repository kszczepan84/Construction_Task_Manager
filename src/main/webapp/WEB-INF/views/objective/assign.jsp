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
    <title>Assign objective</title>
    <%--        <link rel="stylesheet" type="text/css" href="/style.css">--%>
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<div class="container">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Assign <b>Objective</b></h2></div>
                </div>
            </div>
        </div>


        <form method="post" action="/objective/assign">
            <table class="table table-striped table-hover table-bordered table-responsive">
                <tr>
                    <th>Assign objective</th>
                </tr>

                <tr>
                    <td>
                        <div class="form-group">
                            <b>choose employee: </b>
                            <br>
                            <select name="users">
                                <c:forEach items="${users}" var="user">
                                    <option value="${user.id}">${user.fullname}</option>
                                </c:forEach>
                            </select>
                            <br>
                            <b>choose task: </b>
                            <br>
                            <select name="objectives">
                                <c:forEach items="${objectives}" var="objective">
                                    <option value="${objective.id}">${objective.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th> Assigned tasks:</th>
                </tr>
                <tr>
                    <td>

                        <c:forEach items="${users}" var="element">
                            ${element}:
                            <br>
                            <c:forEach items="${element.objectives}" var="el">
                                id: ${el.id} -
                                <c:choose>
                                    <c:when test="${empty el}">
                                        <c:out value="not assigned any task yet"/>
                                    </c:when>

                                    <c:otherwise>
                                        ${el}
                                    </c:otherwise>


                                </c:choose>
                                <br>
                            </c:forEach>
                            <br>
                        </c:forEach>
                        <br>
                    </td>
                </tr>
            </table>
        <table class="center">
            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4"><br>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <button type="submit" class="btn btn-success">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT
                                <span
                                        class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            </button>

                        </div>
                    </div>
                    </form>
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
</div>


</body>
</html>
