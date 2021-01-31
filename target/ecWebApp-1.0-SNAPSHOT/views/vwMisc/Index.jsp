<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="product5" scope="request" type="beans.Product"/>

<t:home>
    <jsp:attribute name="css">
        <link rel="stylesheet" href="https://cdn.plyr.io/3.6.3/plyr.css" />
    </jsp:attribute>
    <jsp:attribute name="js">
    <script src="https://cdn.plyr.io/3.6.3/plyr.js"></script>
  </jsp:attribute>

    <jsp:body>
        <div class="container">
            <video id="plyr" width="800" height="400" poster="${pageContext.request.contextPath}/publicsss/imgs/sp/${product5.proID}/main_thumbs.jpg" controls playsinline>
                <source type="video/mp4" src="${pageContext.request.contextPath}/publicsss/clips/${product5.proID}/1.mp4">
            </video>
            <br>
            <p><h2>${product5.proName}</h2></p>


        </div>
    </jsp:body>
</t:home>

