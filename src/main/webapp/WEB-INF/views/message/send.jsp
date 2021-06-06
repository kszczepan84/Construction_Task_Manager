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
<html>
<head>
    <title>Notes</title>
        <link rel="stylesheet" type="text/css" href="/deleteX.css">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>


<body>
<div class="container">
    <form:form method="post" modelAttribute="message">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-8"><h2>Write <b>Notes</b></h2></div>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                <form:input path="content" placeholder="type message here" class="form-control" type="text"/>
            </div>
        </div>
    </div>
    <br>
    <br>
    <table class="table table-striped table-hover table-bordered table-responsive">
        <tr>
            <th>
                <c:forEach items="${users}" var="user" varStatus="status">
                    ${user} has written:
                    <br>
                    <c:forEach items="${user.messages}" var="message">
                        -> ${message} <a class="deleteX" href="<c:url value="/message/delete/${message.id}"/>">x</a>
                        <br>
                    </c:forEach>
                    <br>
                </c:forEach>
                <br>
            </th>
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
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSEND MESSAGE
                            <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        </button>
                    </div>
                </div>
            </td>
            </form:form>
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
        </tr>
    </table>
</div>
</body>
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>
