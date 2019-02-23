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
    <div class="tinted-image container-fluid mb-5 mt-3">
        <h3 class=" text-center">Your <span class="badge badge-info">Profile</span></h3>
    </div>
    <div class="container">
        <div class="alert alert-secondary mb-5 text-center" role="alert">
            Welcome ${sessionScope.user.username.toUpperCase().charAt(0)}${sessionScope.user.username.substring(1)}! To
            make changes to an existing ad, click on the ad title.
        </div>
        <form method="POST" action="/profile">
            <c:forEach var="ad" items="${ads}">
                <div class="col">
                    <input class="mr-2 mb-2" type="checkbox" name="checked" value=${ad.id}><span>
                    <h4 class="d-inline"><a href="/edit-ad?selectedValue=${ad.title}">${ad.title}</a></h4></span>
                    <p class="ml-4 mb-3">${ad.description}</p>
                </div>
            </c:forEach>
            <input type="submit" class="btn btn-danger btn-block col-2 mx-auto mt-5" style="width: 200px;"
                   value="Confirm Deletion">
        </form>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
