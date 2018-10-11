<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h3>Please login below</h3>
<form method="post">
    <label for="username">Username: </label>
    <input type="text" name="username" id="username">
    <c:set var="userLogin" value="request.getParameter('username')"/>
    <br>
    <label for="password">Password: </label>
    <input type="password" name="password" id="password">
    <c:set var="userPass" value="request.getParameter('password')"/>
    <br>
    <button type=submit id="submit">Login</button>

</form>
<script>
    document.getElementById("#submit").click(function () {
        <c:choose>
        <c:when test="${userLogin =='admin' && userPass =='password'}">
        <c:redirect url="profile.jsp"/>
        </c:when>

        <c:otherwise>
        <c:redirect url="wrongUser.jsp"/>
        </c:otherwise>

        </c:choose>
    })
</script>
</body>
</html>
