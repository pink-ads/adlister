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
        <section id="home" class="banner_part_five ">
            <div id="particles-js">
                <h4 class="display-4 pl-5 pt-4  blue">Mentor Lister</h4>
                <h6 class="lead text-light pb-3 pl-5 pt-4">Classified ads for Software Developers seeking
                    Mentorship</h6>
            </div>
        </section>

        <div class="row">
            <div class="col-1">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/css-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/html-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/js-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/angular-logo.png"></li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/bootstrap-logo.png">
                    </li>
                    <li class="list-group-item flex-fill mx-auto "><img class="logo" src="/imgs/react-logo.png"></li>
                </ul>
            </div>
            <div class="col-11 ml-auto">
                <div class="container">
                    <div class="jumbotron jumbotron-fluid ">
                        <h1 class="display-4 move-center text-center">Get started!</h1>
                        <nav class="navbar navbar-light bg-light justify-content-center">
  <span class="navbar-text text-center">
    <div class="row  move-center pt-3">
                        <%--<h4 class="lead text-center move-center">Connect with an experienced Mentor to reach your--%>
                            <%--goals!</h4>--%>

                            <form action="/register" method="GET">
                                <input type="submit" value="Register Now" class="btn btn-primary btn-block">
                            </form>
                            <div class="mx-3"></div>
                            <form action="/ads" method="GET">
                                <input type="submit" value="Go to Ads" class="btn btn-info btn-block">
                            </form>
                        </div>
  </span>
                        </nav>

                        <hr class=" px-3 pt-4">
                        <ul class="list-unstyled ml-5">
                            <div class="row justify-content-between">
                                <div class="col-4 d-inline">
                                    <li class="card">
                                        <div class="card-body">
                                            <i class="fas fa-users-cog fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title mt-0 mb-5 display-5">Register</h4>
                                            <h5 class="card-text lead pb-3">Sign up</h5>

                                        </div>
                                    </li>
                                    <li class="card">
                                        <div class="card-body">
                                            <i class="fab fa-adversal fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title mt-0 mb-5 display-5">Create</h4>
                                            <h5 class="card-text lead pb-3">Create an ad</h5>
                                        </div>
                                    </li>
                                </div>
                                <div class="col-4 d-inline">
                                    <li class="card">
                                        <div class="card-body">
                                            <i class="fas fa-mouse-pointer fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title mt-0 mb-5 display-5">Categorize</h4>
                                            <h5 class="card-text lead pb-3">Select the categories</h5>
                                        </div>
                                    </li>
                                    <li class="card">
                                        <div class="card-body">
                                            <i class="fas fa-comment-medical fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title mt-0 mb-5 display-5">Describe</h4>
                                            <h5 class="card-text lead pb-3">Add an eye-catching title and
                                                description </h5>
                                        </div>
                                    </li>
                                </div>
                                <div class="col-4 d-inline">
                                    <li class="card">
                                        <div class="card-body">
                                            <i class="fas fa-paste fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title mt-0 mb-5 display-5">Post</h4>
                                            <h5 class="card-text lead pb-3">Post your ad</h5>
                                        </div>
                                    </li>
                                    <li class="card">
                                        <div class="card-body">
                                            <i class="fas fa-pencil-alt fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title mt-0 mb-5 display-5">Edit</h4>
                                            <h5 class="card-text lead pb-3">Edit or Delete your ad</h5>
                                        </div>
                                    </li>
                                </div>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
