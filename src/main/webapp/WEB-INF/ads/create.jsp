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
    <div class="tinted-image container-fluid mb-5 mt-3">
        <h3 class=" text-center">Create a new <span class="badge badge-info">Ad</span></h3>
    </div>
    <div class="container">
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
                <c:when test="${confirmCheckBoxes}">
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <strong>Please select a category!</strong> Ads cannot be submitted without a selection of at least one category.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:when>
            </c:choose>
        <div id="main">
            <form action="/ads/create" method="post">
                <div class="row justify-content-around">
                    <div class="col-5">
                        <div class="form-group">
                            <label for="title">Title</label>
                            <textarea id="title" name="title" class="form-control" type="text" style="resize:none;"
                                      rows="1">${oldTitle}</textarea>
                        </div>


                        <div class="form-group">
                            <label for="description">Description</label>
                            <textarea id="description" name="description" class="form-control"
                                      type="text">${oldDescription}</textarea>
                        </div>
                        <p>
                            <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button"
                               aria-expanded="false" aria-controls="collapseExample">
                                Select Categories
                            </a>
                        </p>
                        <div class="">
                            <input type="submit" class="btn btn-block btn-secondary mt-5">
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="collapse " id="collapseExample">
                            <%--<div class="card card-body">--%>
                            <ul class="list-inline">
                                <c:forEach var="category" items="${categories}">
                                    <li class="list-inline-item btn btn-primary mr-2 mb-2 "><span><input class=""
                                                                                                         type="checkbox"
                                                                                                         name="checked"
                                                                                                         value=${category.cat_id}>
                            <h6 class="d-inline">${category.cat_name}</h6></span></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>



