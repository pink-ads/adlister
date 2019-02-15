<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/profile-navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
                <p>Note: To make changes to an existing ad, click on the ad title...</p>
                <button><a href="/ads/create">Create Another Ad</a></button>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2><a href="/edit-ad?selectedValue=${ad.title}">${ad.title}</a></h2>
                <%--<h2><a href="/edit-ad?selectedValue=${title}">${title}</a></h2>--%>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>

</body>
</html>
