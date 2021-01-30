<%@ page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="userA" scope="request" type="java.util.List<beans.User>"/>
<jsp:useBean id="userB" scope="request" type="java.util.List<beans.User>"/>

<t:home>
    <jsp:body>
        <div class="card">
            <div class="card-header btn" style="color: whitesmoke;background-color: dimgrey"  data-toggle="collapse" data-target="#noidungcard">
                <h1>Danh sách giáo viên</h1>
            </div>
            <div class="card-body collapse"data-toggle="collapse"  aria-expanded="false" id="noidungcard">
                <div class="card">

                    <c:choose>
                        <c:when test="${userA.size() == 0}">
                            <div class="card-body">
                                <p class="card-text">Không có dữ liệu.</p>
                            </div>
                        </c:when>
                        <c:otherwise>

                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Username</th>
                                        <th scope="col">&nbsp;Name</th>
                                        <th scope="col">&nbsp;Email</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="c" items="${userA}">
                                        <tr>
                                            <th scope="row">${c.id}</th>
                                            <td>${c.username}</td>
                                            <td >
                                                    ${c.name}
                                            </td>
                                            <td>${c.email}</td>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>

                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

        </div>

        <div class="card">
            <div class="card-header btn" style="color: whitesmoke;background-color: dimgrey"  data-toggle="collapse" data-target="#noidungcard1">
                <h1>Danh sách học viên</h1>
            </div>
            <div class="card-body collapse"  data-toggle="collapse"  aria-expanded="false" id="noidungcard1">
                 <div class="card">

                <c:choose>
                    <c:when test="${userB.size() == 0}">
                        <div class="card-body">
                            <p class="card-text">Không có dữ liệu.</p>
                        </div>
                    </c:when>
                    <c:otherwise>

                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Username</th>
                                    <th scope="col">&nbsp;Name</th>
                                    <th scope="col">&nbsp;Email</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="c" items="${userB}">
                                    <tr>
                                        <th scope="row">${c.id}</th>
                                        <td>${c.username}</td>
                                        <td >
                                                ${c.name}
                                        </td>
                                        <td>${c.email}</td>

                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                    </c:otherwise>
                </c:choose>
            </div>
            </div>
        </div>

    </jsp:body>
</t:home>
