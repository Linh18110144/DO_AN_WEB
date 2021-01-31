<%@ page contentType="text/html; charset=utf-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="authUser" scope="session" type="beans.User"/>
<jsp:useBean id="watchlistPro" scope="request" type="java.util.List<beans.Watchlist>"/>

<t:home>
   <jsp:attribute name="css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
  </jsp:attribute>

    <jsp:attribute name="js">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>

  </jsp:attribute>

    <jsp:body>

        <div class="card">
            <div class="card-header">
                <h4>Watchlist</h4>
            </div>
            <c:choose>
                <c:when test="${watchlistPro.size() == 0}">
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
                                <th scope="col">Name</th>
                                <th scope="col">Detail</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="c" items="${watchlistPro}">
                                <tr>
                                    <th scope="row">${c.proID}</th>
                                    <td>${c.proName}</td>
                                    <td>
                                        <a class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Product/Detail?id=${c.proID}" role="button">
                                        <i class="fa fa-eye" aria-hidden="true"></i>
                                        Details
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
</t:home>