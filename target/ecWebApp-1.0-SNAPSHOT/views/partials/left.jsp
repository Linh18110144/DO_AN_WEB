<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="categoriesWithDetails" scope="request" type="java.util.List<beans.Category>"/>
<div class="card mb-3">
    <div class="card-header">
        <h4>Categories</h4>
    </div>
    <div class="list-group list-group-flush">
        <c:forEach var="c" items="${categoriesWithDetails}">
            <a href="${pageContext.request.contextPath}/Product/ByCat?id=${c.catID}" class="list-group-item list-group-item-action">
                <i class="fa fa-caret-right" aria-hidden="true"></i>
                    ${c.catName}
            </a>
        </c:forEach>
    </div>
</div>
