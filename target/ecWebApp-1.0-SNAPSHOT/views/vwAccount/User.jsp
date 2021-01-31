<%@ page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="userA" scope="request" type="java.util.List<beans.User>"/>
<jsp:useBean id="userB" scope="request" type="java.util.List<beans.User>"/>

<t:home>
    <jsp:body>
        <div class="card">
            <div class="card-header btn" style="color: whitesmoke;background-color: dimgrey" data-toggle="collapse"
                 data-target="#noidungcard">
                <h1 style="color:black;">Danh sách giáo viên</h1>
            </div>
            <div class="card-body collapse" data-toggle="collapse" aria-expanded="false" id="noidungcard">
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

                                    <th scope="col">Username</th>
                                    <th scope="col">&nbsp;Name</th>
                                    <th scope="col">&nbsp;Email</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="c" items="${userA}">
                                    <tr>

                                        <td>${c.username}</td>
                                        <td>
                                                ${c.name}
                                       </td>
                                        <td>${c.email}</td>
                                        <td class="text-right">
                                            <button type="submit" class="btn btn-outline-danger" formaction="#">
                                                <i class="fa fa-trash-o" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

        </div>

        <div class="card" style="margin-bottom: 265px">
            <div class="card-header btn" style="color: whitesmoke;background-color: dimgrey" data-toggle="collapse"
                 data-target="#noidungcard1">
                <h1 style="color: black">Danh sách học viên</h1>
            </div>
            <div class="card-body collapse" data-toggle="collapse" aria-expanded="false" id="noidungcard1">
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

                                    <th scope="col">Username</th>
                                    <th scope="col">&nbsp;Name</th>
                                    <th scope="col">&nbsp;Email</th>
                                    <th scope="col">&nbsp;</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="c" items="${userB}">
                                    <tr>

                                        <td>${c.username}</td>
                                        <td>
                                                ${c.name}
                                        </td>
                                        <td>${c.email}</td>
                                        <td class="text-right">
                                            <button type="submit" class="btn btn-outline-danger" formaction="#">
                                                <i class="fa fa-trash-o" aria-hidden="true"></i>
                                            </button>
                                        </td>
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
