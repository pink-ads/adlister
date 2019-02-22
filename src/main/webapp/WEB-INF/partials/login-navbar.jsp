
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand blue" href="/">ML</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/login">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/register">Register</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ads">Ads</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="/logout" tabindex="-1" aria-disabled="true">Logout</a>
            </li>
        </ul>
        <form method="post" class="form-inline my-2 my-lg-0" action="/results">
            <input class="form-control mr-sm-2" type="text" name="search" placeholder="Search Ads">
            <input type="submit" class="btn btn-outline-success my-2 my-sm-0" Search>

        </form>
    </div>
</nav>
