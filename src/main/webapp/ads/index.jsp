<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ads</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
<div class="container-fluid">
    <%@include file="../partials/navbar.jsp"%>
    <h1>Here are all the ads:</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="card">
            <div class="card-header">
                <h3>${ad.title}</h3>
            </div>
            <div class="card-body">
                <p>${ad.description}</p>
            </div>
            <div class="card-footer"></div>
        </div>
    </c:forEach>

</div>
</body>
</html>
