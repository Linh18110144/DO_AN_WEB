<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="product" scope="request" type="beans.Product"/>

<t:main>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <h4>${product.proName}</h4>
            </div>

            <div class="card-body">
                <img width="800px" height="400px" alt="${product.proName}" title="${product.proName}" src="${pageContext.request.contextPath}/publicsss/imgs/sp/${product.proID}/main_thumbs.jpg">
                <div class="card-footer d-sm-flex justify-content-sm-between align-items-sm-center">
                    <ul class="list-inline list-inline-dotted mb-0">
                        <li class="list-inline-item"><i class="fa fa-user mr-1"></i> 272</li>
                        <li class="list-inline-item"><i class="fa fa-calendar-check-o mr-1"></i> 15 hours</li>
                        <li class="list-inline-item"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="text-muted ml-1">(12)</span> </li>
                    </ul>
                </div>
                <p class="card-text mt-3">
                    Giá bán:
                    <span class="text-danger font-weight-bold">
                        <fmt:formatNumber value="${product.price}" type="number"/>
                    </span>
                </p>
                <p class="card-text">${product.fullDes}</p>


            </div>

        </div>
    </jsp:body>
</t:main>