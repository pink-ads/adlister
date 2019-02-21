<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="Search Results" value="Search Results"/>
    </jsp:include>
</head>
<body>


    <c:choose>
        <c:when test="${notLoggedIn}">
    <jsp:include page="/WEB-INF/partials/login-navbar.jsp"/>
        </c:when>
        <c:when test="${LoggedIn}">
            <jsp:include page="/WEB-INF/partials/profile-navbar.jsp"/>
        </c:when>
    </c:choose>

    <div class="container">
        <h1>Here are your search results!</h1>
        <%--${sessionScope.user.username}--%>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2><a href="/ad?selectedValue=${ad.title}">${ad.title}</a></h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
