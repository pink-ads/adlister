<%--
  Created by IntelliJ IDEA.
  User: sarahbarron
  Date: 2019-02-14
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
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
    <div class="container">
        <h1>Updating your profile..</h1>
        <form action="/updateProfile" method="POST">
            <div class="form-group">
                <label for="new-username">Update Username</label>
                <textarea id="new-username" name="new-username" class="form-control" type="text">${user.getUsername()}</textarea>
            </div>
            <div class="form-group">
                <label for="new-email">Update Email</label>
                <textarea id="new-email" name="new-email" class="form-control" type="text">${user.getEmail()}</textarea>
            </div>
            <%--<div class="form-group">--%>
                <%--<label for="new-password">Update Password</label>--%>
                <%--<textarea id="new-password" name="new-password" class="form-control" type="password"></textarea>--%>
            <%--</div>--%>
            <input type="submit" name="submit" class="btn btn-primary btn-block" value="Update My Info!">

        </form>
        <%--<input type="submit" name="cancel" class="btn btn-warning btn-block" value="Cancel">--%>
        <a href="/profile"><button>Cancel</button></a>
    </div>






</body>
</html>
