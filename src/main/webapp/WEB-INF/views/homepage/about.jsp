<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 27.05.2021
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>O aplikacji</title>
</head>
<body>

<c:import url="/WEB-INF/views/homepage/header.jsp"/>

<section class="padding-medium story bg-light" id="about">
    <div class="container d-flex justify-content-center align-items-center">
        <div class="row">
            <div class="col-4 mr-4">
                <div class="div-img">
                </div>
            </div>

            <div class="col-7 ml-4">
                <h2 class="text-center">Software description<br>
                    <h5 class="text-center">
                       Here will be a short summary about software
                    </h5>
                </h2>
            </div>
        </div>
    </div>
</section>

<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</body>
</html>