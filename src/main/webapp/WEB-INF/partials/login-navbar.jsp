<%--<nav class="login-navbar navbar-default">--%>
    <%--<div class="container-fluid">--%>
        <%--<!-- Brand and toggle get grouped for better mobile display -->--%>
        <%--<div class="navbar-header">--%>
            <%--<a class="navbar-brand" href="/ads">Adlister</a>--%>
        <%--</div>--%>
        <%--<ul class="nav navbar-nav navbar-right">--%>
            <%--<li><a href="/login">Login</a></li>--%>
            <%--&lt;%&ndash;<li><a href="/logout">Logout</a></li>&ndash;%&gt;--%>
            <%--<li><a href="/register">Register</a></li>--%>
        <%--</ul>--%>
        <%--<form method="post" class="form-inline my-2 my-lg-0" action="/results">--%>
        <%--<input class="form-control mr-sm-2" type="text" name="search" placeholder="Search Ads">--%>
        <%--<input type="submit" class="btn btn-outline-success my-2 my-sm-0"Search>--%>

    <%--</form>--%>
    <%--</div><!-- /.navbar-collapse -->--%>
    <%--</div><!-- /.container-fluid -->--%>

<%--</nav>--%>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/ads">Adlister</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <%--<li class="nav-item active">--%>
                <%--<a class="nav-link" href="/ads">Home <span class="sr-only">(current)</span></a>--%>
            <%--</li>--%>
            <li class="nav-item">
                <a class="nav-link" href="/login">Login</a>
            </li>
                <li class="nav-item">
                <a class="nav-link" href="/register">Register</a>
            </li>
            <%--<li class="nav-item dropdown">--%>
                <%--<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                    <%--Dropdown--%>
                <%--</a>--%>
                <%--<div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
                    <%--<a class="dropdown-item" href="#">Action</a>--%>
                    <%--<a class="dropdown-item" href="#">Another action</a>--%>
                    <%--<div class="dropdown-divider"></div>--%>
                    <%--<a class="dropdown-item" href="#">Something else here</a>--%>
                <%--</div>--%>
            <%--</li>--%>
            <li class="nav-item">
                <a class="nav-link disabled" href="/logout" tabindex="-1" aria-disabled="true">Logout</a>
            </li>
        </ul>
        <form method="post" class="form-inline my-2 my-lg-0" action="/results">
            <input class="form-control mr-sm-2" type="text" name="search" placeholder="Search Ads">
            <input type="submit" class="btn btn-outline-success my-2 my-sm-0"Search>

        </form>
    </div>
</nav>
