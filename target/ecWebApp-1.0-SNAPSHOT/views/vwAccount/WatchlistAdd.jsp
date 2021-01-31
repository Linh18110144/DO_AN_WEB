<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="authUser" scope="session" type="beans.User"/>
<jsp:useBean id="WatchAdd" scope="request" type="java.util.List<beans.Product>"/>

<t:home>
    <jsp:body>

        <form method="post" >
            <div class="card">
                <div class="card-header">
                    <h4>Add Watchlist</h4>
                </div>
                <c:forEach var="c" items="${WatchAdd}">
                    <div class="card-body">

                        <div class="form-group">
                            <label for="txtProID">#</label>
                            <input type="text" class="form-control" id="txtProID" name="ProID" readonly value="${c.proID}">
                        </div>
                    </div>
                    <div class="card-body" style="display: none">

                        <div class="form-group">
                            <label for="txtUserID">#</label>
                            <input type="text" class="form-control" id="txtUserID" name="UserID" readonly value="${authUser.id}">
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <label for="txtProName">Course</label>
                            <input type="text" class="form-control" id="txtProName" name="ProName" autofocus value="${c.proName}">
                        </div>

                    </div>
                </c:forEach>
                <div class="card-footer">

                    <button type="submit" class="btn btn-primary">
                        <i class=" fa fa-check" aria-hidden="true"></i>
                        Add
                    </button>
                </div>
            </div>
        </form>

    </jsp:body>
</t:home>