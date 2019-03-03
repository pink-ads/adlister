<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/login-navbar.jsp"/>
        <h3 class="text-center">Please Log In</h3>
    <div class="container col-5">
        <c:choose>
            <c:when test="${incorrectUsername}">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong>Enter a valid username!</strong> If you do not have an account, please register.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </c:when>
            <c:when test="${incorrectPassword}">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong>Incorrect password</strong> Please re-enter your credentials.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </c:when>
            <c:when test="${existingUser}">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>That username is already registered</strong> Please log in.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </c:when>
        </c:choose>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <textarea id="username" name="username" class="form-control "style="resize:none;" rows="1" type="text" >${oldUsername}</textarea>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-success btn-block" value="Log In">
        </form>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
