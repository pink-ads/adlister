<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/profile-navbar.jsp"/>
    <div class="container">
        <h3>Welcome, ${sessionScope.user.username.toUpperCase().charAt(0)}${sessionScope.user.username.substring(1)}!</h3>
        <div class="alert alert-secondary" role="alert">
            To make changes to an existing ad, click on the ad title.
        </div>
        <form method="POST" action="/profile">
            <c:forEach var="ad" items="${ads}">
                <div class="col">
                    <input class="mr-2 mb-2" type="checkbox" name="checked" value=${ad.id}><span>
                    <h4 class="d-inline"><a href="/edit-ad?selectedValue=${ad.title}">${ad.title}</a></h4></span>
                    <p class="ml-4">${ad.description}</p>
                </div>
            </c:forEach>
            <input type="submit" class="btn btn-primary btn-block col-2 mx-auto"  style="width: 200px;" value="Create Ad">

            <input type="submit" class="btn btn-danger btn-block col-2 mx-auto"  style="width: 200px;" value="Confirm Deletion">
        </form>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
