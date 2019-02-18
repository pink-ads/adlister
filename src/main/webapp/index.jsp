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
            <div class="img-container-index">
                <h4 class="display-4 d-inline mr-4 blue">Mentor Lister</h4>
                <h6 class="lead d-inline">Classified ads for Software Developers seeking Mentorship</h6>
            </div>
        </div>
        <h3 class="text-center blue">Software Development built with the Developer in Mind</h3>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
