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
        <ul class="list-group list-group-flush col-1">
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo text-right" src ="/imgs/css-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/html-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/js-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/angular-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/bootstrap-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/c-plus-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/java-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/jquery-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/node-js-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/react-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/git-hub-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/php-logo.png"></li>
            <li class="list-group-item flex-fill mx-auto" style="width: 200px;"><img class="logo" src ="/imgs/vue-logo.png"></li>
        </ul>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
