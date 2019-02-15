<%--
  Created by IntelliJ IDEA.
  User: karla
  Date: 2/14/19
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="nav navbar-nav navbar-right">
                <%--<li><a href="/login">Login</a></li>--%>
                <li><a href="/logout">Logout</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/profile" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        My Profile
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/profile">My Ads</a>
                        <a class="dropdown-item" href="/ads/create">Create Ad</a>
                        <a class="dropdown-item" href="/updateProfile">Update Profile</a>


                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="/logout">Logout</a>
                    </div>
                </li>
            </ul>
        </div>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->


</nav>


</body>
</html>
