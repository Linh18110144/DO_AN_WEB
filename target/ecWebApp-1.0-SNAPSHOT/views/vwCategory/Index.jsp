<%@ page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="categories" scope="request" type="java.util.List<beans.Category>"/>

<t:main>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <h4 class="d-flex justify-content-between">
                    Categories
                    <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/Admin/Category/Add" role="button">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                        Add Category
                    </a>
                </h4>
            </div>
            <c:choose>
                <c:when test="${categories.size() == 0}">
                    <div class="card-body">
                        <p class="card-text">Không có dữ liệu.</p>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Category</th>
                                <th scope="col">&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="c" items="${categories}">
                                <tr>
                                    <th scope="row">${c.catID}</th>
                                    <td>${c.catName}</td>
                                    <td class="text-right">
                                        <a class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Admin/Category/Edit?id=${c.catID}" role="button">
                                            <i class="fa fa-pencil" aria-hidden="true"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </jsp:body>
</t:main>
