<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/login-navbar.jsp"/>
    <div class="container">
        <h3 class="text-center">Please complete the registration form</h3>
        <div class="container col-5">
            <c:choose>
                <c:when test="${missingInformation}">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Empty fields!</strong> Complete all fields.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:when>
                <c:when test="${mismatchedPasswords}">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Passwords do not match!</strong> Please re-enter your credentials.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:when>
            </c:choose>
            <form action="/register" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" name="email" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>
                <div class="form-group">
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                </div>
                <input type="submit" class="btn btn-secondary btn-block">
            </form>
        </div>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
