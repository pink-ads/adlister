<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dwallace
  Date: 2/13/19
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Single Ad Page"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/profile-navbar.jsp"/>


    <div class="container">
        <h1>Edit Ad...</h1>
        <form action="/edit-ad" method="post">
            <div class="form-group">
                <label for="editTitle">Title</label>
                <textarea contenteditable="" id="editTitle" name="editTitle" class="form-control" type="text" >${title}</textarea>
            </div>
            <div class="form-group">
                <label for="editDescription">Description</label>
                <textarea contenteditable="" id="editDescription" name="editDescription" class="form-control" type="text">${description}</textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>




    <jsp:include page="/WEB-INF/partials/foot.jsp" />
</body>
</html>


