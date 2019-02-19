
<nav class="navbar navbar-expand-lg  bg-light">
    <a class="navbar-brand" href="/ads">MrLister</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link disabled" href="/register">Register</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    My Profile
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/profile">My Ads</a>
                    <a class="dropdown-item" href="/ads/create">Create Ad</a>
                    <a class="dropdown-item" href="/updateProfile">Update Profile</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/logout" tabindex="-1">Logout</a>
            </li>
        </ul>
        <form method="post" class="form-inline my-2 my-lg-0" action="/results">
            <input class="form-control mr-sm-2" type="text" name="search" placeholder="Search Ads">
            <input type="submit" class="btn btn-outline-success my-2 my-sm-0" Search>
        </form>
    </div>
</nav>
