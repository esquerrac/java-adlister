<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<%@include file="partials/navbar.jsp"%>

<form class="form-horizontal" method="post">
    <h3>Please login below</h3>
    <div class="form-group">
        <div class="col-sm-10">
            <input type="email" name="username" class="form-control" id="username" placeholder="Username">
            <c:set var="userLogin" value="request.getParameter('username')"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-10">
            <input type="password" name="password" class="form-control" id="password" placeholder="Password">
            <c:set var="userPass" value="request.getParameter('password')"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button class="btn btn-outline-primary" id="submit">Login</button>
        </div>
    </div>
</form>

<%--<script>--%>
    <%--document.getElementById("#submit").click(function () {--%>
        <%--<c:choose>--%>
        <%--<c:when test="${userLogin =='admin' && userPass =='password'}">--%>
        <%--<c:redirect url="profile.jsp"/>--%>
        <%--</c:when>--%>

        <%--<c:otherwise>--%>
        <%--<c:redirect url="wrongUser.jsp"/>--%>
        <%--</c:otherwise>--%>

        <%--</c:choose>--%>
    <%--})--%>
<%--</script>--%>
</body>
</html>
