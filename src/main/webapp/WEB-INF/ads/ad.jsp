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
        <jsp:param name="title" value="Single Ad Page" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/profile-navbar.jsp" />

    <div class="container">
        <h1>Ad Details...</h1>
            <div class="col-md-6">
                <h2>${title}</h2>
                <h3>${description}</h3>
                <h4>Created By: ${username}</h4>
                <h4>Contact: ${email}</h4>
            </div>
    </div>

    
</body>
</html>


<%--single ad--%>
<%--title--%>
<%--description--%>
<%--username--%>
<%--email--%>