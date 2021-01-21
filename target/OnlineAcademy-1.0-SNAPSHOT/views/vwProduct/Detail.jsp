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
                <img alt="${product.proName}" title="${product.proName}" src="${pageContext.request.contextPath}/publicsss/imgs/sp/${product.proID}/main_thumbs.jpg">
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