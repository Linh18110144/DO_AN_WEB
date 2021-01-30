<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="products1" scope="request" type="java.util.List<beans.Product>"/>

<t:home>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <h4 class="d-flex justify-content-between">
                    Course
                    <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/Misc/Upload"
                       role="button">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                        Add Course
                    </a>
                </h4>
            </div>
            <c:choose>
                <c:when test="${products1.size() == 0}">
                    <div class="card-body">
                        <p class="card-text">Không có dữ liệu.</p>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="card-body">
                        <div class="row">
                            <c:forEach var="c" items="${products1}">
                                <div class="col-sm-4 mb-3">
                                    <div class="product-wrapper mb-45 text-center">
                                        <div class="product-img"> <a href="${pageContext.request.contextPath}/Misc/Index?id=${c.proID}" data-abc="true"> <img width="600px" height="200px" src="${pageContext.request.contextPath}/publicsss/imgs/sp/${c.proID}/main_thumbs.jpg" alt="${c.proName}" title="${c.proName}" class="card-img-top"/> </a> <span class="text-center"><i class="fa fa-rupee"></i> <fmt:formatNumber value="${c.price}" type="number"/></span>
                                            <div class="product-action">
                                                <div class="product-action-style"> <a href="${pageContext.request.contextPath}/Product/Detail?id=${c.proID}"> <i class="fa fa-eye"></i> </a> <a href="#"> <i class="fa fa-heart"></i> </a> <a href="#"> <i class="fa fa-shopping-cart"></i> </a> </div>
                                            </div>
                                        </div>
                                        <div class="card-footer"><h5 class="card-title">${c.proName}</h5></div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="card-footer">
                        <nav aria-label="...">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link" href="#" tabindex="-1">
                                        <i class="fa fa-fast-backward" aria-hidden="true"></i>
                                    </a>
                                </li>
                                <c:forEach var="p" items="${pages1}">
                                    <c:choose>
                                        <c:when test="${p == currentPage1}">
                                            <li class="page-item active">
                                                <a class="page-link" href="javascript:;">${p}</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="page-item">
                                                <a class="page-link" href="?id=${catID}&page1=${p}">${p}</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                <li class="page-item">
                                    <a class="page-link" href="#">
                                        <i class="fa fa-fast-forward" aria-hidden="true"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </jsp:body>
</t:home>