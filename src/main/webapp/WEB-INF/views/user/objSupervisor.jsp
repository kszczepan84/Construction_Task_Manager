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
    <%--        <link rel="stylesheet" type="text/css" href="/style.css">--%>
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<link rel="stylesheet" type="text/css" href="/center.css">

<body>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-8"><h2>Update <b>task status</b></h2></div>
            </div>
        </div>
    </div>
    <form method="post" action="/supervisor">
        <table class="table table-striped table-hover table-bordered table-responsive">
            <tr>
                <th colspan="10"> Assigned task for ${user}:</th>
            </tr>

            <tr>

                <div class="form-group">
                    <c:forEach items="${user.objectives}" var="item" varStatus="status">
                        <td>
                            <input name="objectiveOldStatus" type="hidden" value="${item.id}">

                                ${item.name}
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
                            <br>
                            <select name="taskStatusNew">
                                <c:forEach items="${taskStatusAll}" var="taskStatus">
                                    <option> ${taskStatus}</option>
                                </c:forEach>
                            </select>
                            <br>
                        </td>

                        <br>
                    </c:forEach>
                </div>

            </tr>
        </table>
        <table style="width:50%;float:left">
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
                </td>
            </tr>
        </table>
    </form>
    <table style="width:50%;float:left">
        <td>
            <form action="${pageContext.request.contextPath}/">
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
    </table>



</div>

</body>
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>
