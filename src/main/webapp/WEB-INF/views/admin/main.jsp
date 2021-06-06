<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manager site</title>
    <link rel="stylesheet" href="<c:url value="/image.css"/>">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<body>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-8"><h2>Welcome! Choose action:</h2></div>
            </div>
        </div>
    </div>
    <table class="table-hover table-bordered">
        <thead>
        <td>
            <p style="text-align: center">
                <b>Manage employees</b>

            </p>
            <p>
                <a href="<c:url value="/admin/employee/list"/>"><img src="/employees.png"></a>
            </p>
        </td>
        <td>
            <p style="text-align: center">
                <b> Manage tasks</b>
            </p>
            <p>
                <a href="<c:url value="/objective/list"/>"><img src="/task.png"></a>
            </p>
        </td>
    </table>
</div>
</body>
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>
