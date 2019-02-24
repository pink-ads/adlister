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
                <div class="text-center main-header pt-5 blue">
                    <h4 class="display-4 pr-4 d-inline pt-4 main-font">Mentor</h4>
                    <img src="imgs/professor.png" height="100px" class="professor-img text-center">
                    <h4 class="display-4 pl-4 pt-4 d-inline main-font">Lister</h4>
                </div>
            </div>
        </section>
<div class="row">
    <div class="col"></div>
    <div class="col"></div>
</div>
        <div class="row">
            <div class="col-12 ml-auto">
                <div class="container">
                    <div class="jumbotron jumbotron-fluid ">
                        <h1 class="display-4 text-center">Get started!</h1>
                        <nav class="navbar navbar-light bg-light justify-content-center">
  <span class="navbar-text text-center">
    <div class="row pt-3">
                            <form action="/register" method="GET">
                                <input type="submit" value="Register Now" class="btn register-color btn-block">
                            </form>
                            <div class="mx-3"></div>
                            <form action="/ads" method="GET">
                                <input type="submit" value="Go to Ads" class="btn ads-color btn-block">
                            </form>
                        </div>
  </span>
                        </nav>

                        <hr class=" px-3 pt-4">
                        <ul class="list-unstyled ml-5">
                            <div class="row justify-content-between">
                                <div class="col-4 d-inline">
                                    <li class="card-fluid">
                                        <div class="card-body text-center to-do">
                                            <i class="fas fa-users-cog fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title mx-3 display-5">Register</h4>
                                            <h5 class="card-text lead pb-3">Sign up</h5>

                                        </div>
                                    </li>
                                    <li class="card-fluid">
                                        <div class="card-body text-center to-do">
                                            <i class="fas fa-comment-medical fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title mx-3 display-5">Describe</h4>
                                            <h5 class="card-text lead pb-3">Add an eye-catching title and
                                                description </h5>
                                        </div>
                                    </li>
                                </div>
                                <div class="col-4 d-inline">
                                    <li class="card-fluid">
                                        <div class="card-body text-center to-do">
                                            <i class="fab fa-adversal fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title mx-3 display-5">Create</h4>
                                            <h5 class="card-text lead pb-3">Create an ad</h5>
                                        </div>
                                    </li>

                                    <li class="card-fluid">
                                    <div class="card-body text-center to-do">
                                    <i class="fas fa-paste fa-3x icon-size align-self-center"></i>
                                    <h4 class="card-title mx-3 display-5">Post</h4>
                                    <h5 class="card-text lead pb-3">Post your ad</h5>
                                    </div>
                                    </li>
                                </div>
                                <div class="col-4 d-inline ">
                                    <li class="card-fluid">
                                        <div class="card-body text-center to-do">
                                            <i class="fas fa-mouse-pointer fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title  mx-3 display-5">Categorize</h4>
                                            <h5 class="card-text lead pb-3">Select the categories</h5>
                                        </div>
                                    </li>

                                    <li class="card-fluid">
                                        <div class="card-body text-center to-do">
                                            <i class="fas fa-pencil-alt fa-3x icon-size align-self-center"></i>
                                            <h4 class="card-title mx-3 display-5">Edit</h4>
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
