<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<title>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <head>
        <jsp:include page="partials/head.jsp">
            <jsp:param name="Profile Update" value="Update Profile"/>
        </jsp:include>
    </head>
    <body>
        <jsp:include page="partials/profile-navbar.jsp"/>
        <div class="container-fluid">
            <h3>Updating your profile..</h3>
            <div class="col-5">
            <form action="/updateProfile" method="POST">
                <div class="form-group">
                    <label for="new-username">Update Username</label>
                    <textarea id="new-username" name="new-username" style="resize:none;" rows="1" class="form-control"
                              type="text">${username}</textarea>
                </div>
                <div class="form-group">
                    <label for="new-email">Update Email</label>
                    <textarea id="new-email" name="new-email" style="resize:none;" rows="1" class="form-control" type="text">${email}</textarea>
                </div>
                <div class="form-group">
                    <label for="new-password">Update Password</label>
                    <textarea id="new-password" name="new-password" style="resize:none;" rows="1" class="form-control"
                              type="password">${password}</textarea>
                </div>
                <input type="submit" name="submit" class="btn btn-success btn-block" value="Update My Info!">
                <input type="submit" name="cancel" class="btn btn-warning btn-block" value="Cancel">
            </form>
        </div>
        </div>


    </body>
</html>
