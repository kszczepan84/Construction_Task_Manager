<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 20.05.2021
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<%--<h1><spring:message code="app.title"/></h1>--%>
<%--<h1><spring:message code="app.footer"/></h1>--%>

<table>
  <tr>
    <th>Id</th>
    <th>First name</th>
    <th>Last name</th>
  </tr>
  <c:forEach items="${users}" var="user">
    <tr>
      <td>${user.id}</td>
      <td>${user.firstName}</td>
      <td>${user.lastName}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
