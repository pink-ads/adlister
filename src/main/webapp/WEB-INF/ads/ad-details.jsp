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
        <jsp:param name="title" value="Single Ad Detail Page"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/login-navbar.jsp"/>


    <div class="container">
        <h2 class="blue">Ad Details...</h2>
        <div>
            <h3>${title}</h3>
        </div>
        <h3>${description}</h3>
        <h4></h4>
        <c:forEach var="category" items="${categories}">
            <p>${category.getCat_name()}</p>
        </c:forEach>
        <h5>${username}</h5>
        <h5>${email}</h5>

    </div>
    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>