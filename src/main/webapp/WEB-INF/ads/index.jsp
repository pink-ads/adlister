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
            <div class="text-center main-header pt-5 blue">
                <h4 class="display-4 pr-4 d-inline pt-4 main-font">Mentor</h4>
                <img src="imgs/professor.png" height="100px" class="professor-img text-center">
                <h4 class="display-4 pl-4 pt-4 d-inline main-font">Lister</h4>
            </div>
        </div>
    </section>
    <%--<div class="row justify-content-center">--%>
        <%--<div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">--%>
            <%--<div class="carousel-inner">--%>
                <%--<div class="carousel-item active ">--%>
                    <%--<img class="card-img-top img-icon-card d-block logo logo-minus" src="/imgs/html-logo.png">--%>
                <%--</div>--%>
                <%--<div class="carousel-item  ">--%>
                    <%--<img class="card-img-top img-icon-card d-block logo" src="/imgs/vue-logo.png">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">--%>
            <%--<div class="carousel-inner">--%>
                <%--<div class="carousel-item active">--%>
                    <%--<img class="card-img-top img-icon-card logo logo-minus" src="/imgs/css-logo.png">--%>
                <%--</div>--%>
                <%--<div class="carousel-item ">--%>
                    <%--<img class="card-img-top img-icon-card logo mt-1" src="/imgs/bootstrap-logo.png">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="card carousel-slide d-inline col-1 mr-5" data-ride="carousel" style="width: 18rem;">--%>
            <%--<div class="carousel-inner">--%>
                <%--<div class="carousel-item active">--%>
                    <%--<img class="card-img-top img-icon-card logo logo-minus" src="/imgs/js-logo.png">--%>
                <%--</div>--%>
                <%--<div class="carousel-item ">--%>
                    <%--<img class="card-img-top img-icon-card logo" src="/imgs/c-plus-logo.png">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="card carousel-slide d-inline col-1 ml-5" data-ride="carousel" style="width: 18rem;">--%>
            <%--<div class="carousel-inner">--%>
                <%--<div class="carousel-item active">--%>
                    <%--<img class="card-img-top img-icon-card logo logo-minus" src="/imgs/git-hub-logo.png">--%>
                <%--</div>--%>
                <%--<div class="carousel-item ">--%>
                    <%--<img class="card-img-top img-icon-card logo mt-3" src="/imgs/java-logo.png">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">--%>
            <%--<div class="carousel-inner">--%>
                <%--<div class="carousel-item active">--%>
                    <%--<img class="card-img-top img-icon-card logo logo-minus" src="/imgs/jquery-logo.png">--%>
                <%--</div>--%>
                <%--<div class="carousel-item ">--%>
                    <%--<img class="card-img-top img-icon-card logo mt-2" src="/imgs/node-js-logo.png">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">--%>
            <%--<div class="carousel-inner">--%>
                <%--<div class="carousel-item active">--%>
                    <%--<img class="card-img-top img-icon-card logo logo-minus" src="/imgs/react-logo.png">--%>
                <%--</div>--%>
                <%--<div class="carousel-item ">--%>
                    <%--<img class="card-img-top img-icon-card logo mt-3" src="/imgs/php-logo.png">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="row justify-content-center" >




        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Search by Category
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
<%--<c:forEach var="category" items="${categories}">--%>
                <%--<button class="dropdown-item" type="button">${category.getName()}</button>--%>
<%--</c:forEach>--%>
            </div>
        </div>

    </div>

    <hr clss="pt-3 pb-3">
    <%--<div class="row justify-content-center">--%>
        <c:forEach var="ad" items="${ads}">
            <div class="card pl-3 mb-3 d-block" >
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img class="card-img-top img-icon-card opacity" src="/bootflat/img/check_flat/blank-image-icon.png"
                             href="/ad-details?selectedValue=${ad.getTitle()}" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body" style="width: 50rem;">
                            <h5 class="card-text"><a href="/ad-details?selectedValue=${ad.getTitle()}">${ad.getTitle()}</a>
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    <%--</div>--%>

    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>

