<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/login-navbar.jsp"/>
    <div class="container">
        <div class="jumbotron jumbotron-fluid">
            <div class="img-container">
                <h4 class="display-4">Pink Ads</h4>
                <h6 class="lead">Classified ads for yogi's</h6>
            </div>
        </div>
        <h3>You shouldn't have to stretch your wallet to practice</h3>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
