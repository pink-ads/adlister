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
            <h3 class="text-center">Edit Ad...</h3>
        <div class="col-5">
            <c:choose>
                <c:when test="${missingFields}">
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <strong>Complete all empty fields!</strong> Ads cannot be submitted with a missing title or
                        description.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:when>
            </c:choose>
            <form action="/edit-ad" method="post">
                <div class="form-group">
                    <label for="editTitle">Title</label>
                    <textarea contenteditable="" id="editTitle" style="resize:none;" rows="1" name="editTitle"
                              class="form-control"
                              type="text">${title}</textarea>
                </div>
                <div class="form-group">
                    <label for="editDescription">Description</label>
                    <textarea contenteditable="" id="editDescription" name="editDescription" class="form-control"
                              type="text">${description}</textarea>
                </div>
                <input type="submit" class="btn btn-block btn-secondary">
            </form>
        </div>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>

