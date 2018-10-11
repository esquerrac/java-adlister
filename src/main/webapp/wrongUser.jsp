<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Redirecting...</title>
</head>
<body>

<h1>Sorry, that entry doesn't match any registered users.  One moment...</h1>

</body>

<script>
    setTimeout(function(){
        <c:redirect url="login.jsp"/>
    },3000)

</script>
</html>
