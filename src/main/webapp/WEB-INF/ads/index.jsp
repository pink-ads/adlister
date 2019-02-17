<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/login-navbar.jsp"/>

    <div class="container">
        <div class="jumbotron jumbotron-fluid">
            <div class="img-container-ads">
                <h4 class="display-4">Pink Ads</h4>
                <h6 class="lead">Classified ads for yogi's</h6>
            </div>
        </div>
        <div class="row">
        <c:forEach var="ad" items="${ads}">
        <div class="col-3">
            <div class="card d-inline" style="width: 18rem;">
                <img src="/imgs/for-sale.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-text"><a href="/ad-details?selectedValue=${ad.getTitle()}">${ad.getTitle()}</a></h5>
                        <%--<p>${ad.getDescription()}</p>--%>
                </div>
            </div>
                </div>
        </c:forEach>
            </div>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>

