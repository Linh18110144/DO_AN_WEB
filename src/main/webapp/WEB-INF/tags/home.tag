<%@ tag pageEncoding="UTF-8" %>
<%@attribute name="css" fragment="true" required="false" %>
<%@attribute name="js" fragment="true" required="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commercw Web Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <jsp:invoke fragment="css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/publicsss/navcss/nav.css">
</head>

<body>
<div class="container-fluid mt-3">
            <jsp:doBody />
</div>

<jsp:include page="../../views/partials/footer.jsp"/>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<jsp:invoke fragment="js"/>
</body>

</html>