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
    <title>Assign objective</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<form:form method="post" modelAttribute="message">


    <body>
    <table>
        <tr>
            <th><label>
                <form:input path="content" placeholder="type message here"/>
            </label>
            </th>
        </tr>
        <tr>
            <th>


                <c:forEach items="${users}" var="user" varStatus="status">
                    ${user} has written:
                    <br>
                    <c:forEach items="${user.messages}" var="message">
                        -> ${message} <a href="<c:url value="/message/delete/${message.id}"/>">x</a>
                        <br>
                    </c:forEach>
                    <br>
                </c:forEach>
                <br>
            </th>

        </tr>

        <td>
            <button type="submit"> Send message</button>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </td>
        </tr>
    </table>
    <a href="<c:url value="/"/>">return to homepage</a>
    </body>
    <c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</form:form>
</html>
