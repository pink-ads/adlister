<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/login-navbar.jsp"/>
    <div class="container-fluid">
        <div class="jumbotron">
            <div class="img-container-index">
                <h4 class="display-4 d-inline mr-4 blue">Mentor Lister</h4>
                <h6 class="lead d-inline">Classified ads for Software Developers seeking Mentorship</h6>
            </div>
        </div>
        <h3 class="text-center bk-blue">Software Development built with the Developer in Mind</h3>
        <div class="row">
            <div class="col-1">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/css-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/html-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/js-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/angular-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/bootstrap-logo.png">
                    </li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/c-plus-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/java-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto"><img class="logo" src="/imgs/jquery-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/node-js-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/react-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/git-hub-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/php-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/vue-logo.png"></li>
                </ul>
            </div>
            <div class="col-11 ml-auto">
                <div class="container">


                    <div class="jumbotron jumbotron-fluid ">
                        <h1 class="display-4 text-center">Get started!</h1>
                        <h4 class="lead text-center">This is a platform designed for users like yourself to connect with mentors who know software that you're trying to learn.</h4>
                        <hr class="my-4">
                        <ul class="list-unstyled ml-5">
                            <li class="media">
                                <i class="fas fa-users-cog fa-3x icon-size"></i>
                                <div class="media-body">
                                    <h3 class="mt-0 mb-5">Register</h3>
                                </div>
                            </li>
                            <li class="media my-4">
                                <i class="fab fa-adversal fa-3x icon-size"></i>
                                <div class="media-body">
                                    <h3 class="mt-0 mb-5">Create an ad</h3>
                                </div>
                            </li>
                            <li class="media">
                                <i class="fas fa-mouse-pointer fa-3x icon-size"></i>
                                <div class="media-body">
                                    <h3 class="mt-0 mb-5">Select the topics you need your mentor to specialize in</h3>
                                </div>
                            </li>
                            <li class="media">
                                <i class="fas fa-comment-medical fa-3x icon-size"></i>
                                <div class="media-body">
                                    <h3 class="mt-0 mb-5">Be sure to leave a captivating title and a quick description of your needs</h3>
                                </div>
                            </li>
                            <li class="media">
                                <i class="fas fa-paste fa-3x icon-size"></i>
                                <div class="media-body">
                                    <h3 class="mt-0 mb-5">Post your ad!</h3>
                                </div>
                            </li>
                            <li class="media">
                                <i class="fas fa-pencil-alt fa-3x icon-size"></i>
                                <div class="media-body">
                                    <h3 class=" mt-0 mb-5">You can edit your ad at anytime or delete your ad when you've found the perfect mentor</h3>
                                </div>
                            </li>
                        </ul>
                        <a class="btn btn-primary btn-lg align-center" href="#" role="button">Register Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
