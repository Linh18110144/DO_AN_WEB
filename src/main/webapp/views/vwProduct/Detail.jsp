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

                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Thông tin khóa học
                                </button>
                            </h2>
                        </div>

                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                                <p class="card-text">${product.fullDes}</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Lợi ích từ khóa học
                                </button>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                                <p class="card-text">${product.fullDes1}</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    Khuyến nghị
                                </button>
                            </h2>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                            <div class="card-body">
                                <p class="card-text">${product.fullDes2}</p>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

        </div>
    </jsp:body>
</t:main>