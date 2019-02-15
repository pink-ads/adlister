<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/login-navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><a href="/ad-details?selectedValue=${ad.getTitle()}">${ad.getTitle()}</a></h2>
            <p>${ad.getDescription()}</p>
        </div>
    </c:forEach>
</div>
    <jsp:include page="/WEB-INF/partials/foot.jsp" />
</body>
</html>
