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
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<form method="post" action="/objective/assign">
    <table>
        <tr>
            <th>Assign objective</th>
            <th> Assigned</th>
        </tr>
        <tr>
            <td>
                <select name="users">
                    <c:forEach items="${users}" var="user">
                        <option value="${user.id}">${user.fullname}</option>
                    </c:forEach>
                </select>
                <select name="objectives">
                    <c:forEach items="${objectives}" var="objective">
                        <option value="${objective.id}">${objective.name}</option>
                    </c:forEach>
                </select>
            </td>
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
    <button type="submit"> Confirm</button>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <a href="<c:url value="/objective/list"/>">return</a>
</form>
</body>
</html>
