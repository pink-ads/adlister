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
                <input id="new-username" name="new-username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="new-email">Update Email</label>
                <input id="new-email" name="new-email" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="new-password">Update Password</label>
                <input id="new-password" name="new-password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Update My Info!">
        </form>
    </div>






</body>
</html>
