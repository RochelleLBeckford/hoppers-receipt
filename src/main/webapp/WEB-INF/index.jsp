<!-- todo -> Go through all the set up requirements for adding JSP and JSTL to your project -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
</head>

<!-- todo 
    -> Render the purchase information on the page. 
    -> Change the variable values from "Grace Hopper" etc. to other values to thoroughly test your code.
-->
<body>
    <div class="container">
        <img src="imgs/graceHopper.jpeg" alt="Grace Hopper">
        <h1>
            Customer Name: <c:out value="${name}"></c:out>
        </h1>
        <ul>
            <li>Item Name: <c:out value="${itemName}"></c:out></li>
            <li>Price: $<c:out value="${price}"></c:out></li>
            <li>Description: <c:out value="${description}"></c:out></li>
            <li>Vendor: <c:out value="${vendor}"></c:out></li>
        </ul>
    </div>
</body>

</html>