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
    <jsp:include page="partials/login-navbar.jsp"/>
    <div class="container">
        <h1>Updating your profile..</h1>
        <form action="/updateProfile" method="POST">
            <div class="form-group">
                <label for="new-username">Update Username</label>
                <textarea id="new-username" name="new-username" class="form-control" type="text">${username}</textarea>
            </div>
            <div class="form-group">
                <label for="new-email">Update Email</label>
                <textarea id="new-email" name="new-email" class="form-control" type="text">${email}</textarea>
            </div>
            <div class="form-group">
                <label for="new-password">Update Password</label>
                <textarea id="new-password" name="new-password" class="form-control" type="password">${password}</textarea>
            </div>
            <input type="submit" name="submit" class="btn btn-primary btn-block" value="Update My Info!">
            <input type="submit" name="cancel" class="btn btn-warning btn-block" value="Cancel">
        </form>
    </div>






</body>
</html>
