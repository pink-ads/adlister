<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/profile-navbar.jsp"/>
    <div class="container">
        <h3 class="text-center">Create a new Ad</h3>
        <div class="container col-5">
            <c:choose>
                <c:when test="${missingTitle}">
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <strong>Complete all empty fields!</strong> Ads cannot be submitted with a missing title or
                        description.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:when>
            </c:choose>

            <form action="/ads/create" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <textarea id="title" name="title" class="form-control" type="text" style="resize:none;" rows="1">${oldTitle}</textarea>
                </div>


                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" class="form-control"
                              type="text">${oldDescription}</textarea>
                </div>
                <input type="submit" class="btn btn-block btn-secondary submit-ad">

                <div>
                    <c:forEach var="category" items="${categories}">
                        <input class="mr-2 mb-2" type="checkbox" name="checked" value=${category.cat_id}><span>
      <h6 class="d-inline">${category.cat_name} ${category.cat_id}</h6></span>
                    </c:forEach>
                </div>
            </form>
        </div>
    </div>

    <%--either put list of checkboxes for all avail catergories, or put an input for user to enter "tags" = categories --%>


    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>
