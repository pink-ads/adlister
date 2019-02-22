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


    <section id="home" class="banner_part_five ">
        <div id="particles-js">
            <h4 class="display-4 pl-5 pt-4  blue">Mentor Lister</h4>
            <h6 class="lead text-light pb-3 pl-5 pt-4">Classified ads for Software Developers seeking Mentorship</h6>
        </div>
    </section>
    <div class="row justify-content-center">
        <%--<div class="col-12 text-center">--%>
            <div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active ">
                        <img class="card-img-top img-icon-card d-block logo logo-minus" src="/imgs/html-logo.png">
                    </div>
                    <div class="carousel-item  ">
                        <img class="card-img-top img-icon-card d-block logo" src="/imgs/vue-logo.png">
                    </div>
                </div>
            </div>

            <div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="card-img-top img-icon-card logo logo-minus" src="/imgs/css-logo.png">
                    </div>
                    <div class="carousel-item ">
                        <img class="card-img-top img-icon-card logo mt-1" src="/imgs/bootstrap-logo.png">
                    </div>
                </div>
            </div>

            <div class="card carousel-slide d-inline col-1 mr-5" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="card-img-top img-icon-card logo logo-minus" src="/imgs/js-logo.png">
                    </div>
                    <div class="carousel-item ">
                        <img class="card-img-top img-icon-card logo" src="/imgs/c-plus-logo.png">
                    </div>
                </div>
            </div>

            <div class="card carousel-slide d-inline col-1 ml-5" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="card-img-top img-icon-card logo logo-minus" src="/imgs/git-hub-logo.png">
                    </div>
                    <div class="carousel-item ">
                        <img class="card-img-top img-icon-card logo mt-3" src="/imgs/java-logo.png">
                    </div>
                </div>
            </div>

            <div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="card-img-top img-icon-card logo logo-minus" src="/imgs/jquery-logo.png">
                    </div>
                    <div class="carousel-item ">
                        <img class="card-img-top img-icon-card logo mt-2" src="/imgs/node-js-logo.png">
                    </div>
                </div>
            </div>

            <div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="card-img-top img-icon-card logo logo-minus" src="/imgs/react-logo.png">
                    </div>
                    <div class="carousel-item ">
                        <img class="card-img-top img-icon-card logo mt-3" src="/imgs/php-logo.png">
                    </div>
                </div>
            </div>
    </div>
<hr clss="pt-3 pb-3">
    <div class="row">
        <c:forEach var="ad" items="${ads}">
            <div class="col-2">
                <div class="card d-inline" style="width: 18rem;">
                    <img class="card-img-top img-icon-card opacity" src="/bootflat/img/check_flat/blank-image-icon.png"
                         href="/ad-details?selectedValue=${ad.getTitle()}" alt="...">
                    <div class="card-body">
                        <h6 class="card-text"><a href="/ad-details?selectedValue=${ad.getTitle()}">${ad.getTitle()}</a>
                        </h6>
                            <%--<p>${ad.getDescription()}</p>--%>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>

