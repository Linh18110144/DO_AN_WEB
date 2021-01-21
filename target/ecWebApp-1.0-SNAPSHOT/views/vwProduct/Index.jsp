<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="products" scope="request" type="java.util.List<beans.Product>"/>

<t:main>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <h4>Courses</h4>
            </div>
            <c:choose>
                <c:when test="${products.size() == 0}">
                    <div class="card-body">
                        <p class="card-text">Không có dữ liệu.</p>
                    </div>
                </c:when>
                <c:otherwise>
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Product</th>
                            <th scope="col">Description</th>
                            <th scope="col" class="text-right">Price</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="c" items="${products}">
                            <tr>
                                <th scope="row">${c.proID}</th>
                                <td>${c.proName}</td>
                                <td>${c.tinyDes}</td>
                                <td class="text-right">
                                    <fmt:formatNumber value="${c.price}" type="number"/>
                                </td>
                                <td class="text-right">
                                    <a class="btn btn-sm btn-outline-primary" href="#" role="button">
                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </c:otherwise>
            </c:choose>
        </div>
    </jsp:body>
</t:main>
