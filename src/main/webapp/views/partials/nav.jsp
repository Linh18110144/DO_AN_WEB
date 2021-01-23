<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="authUser" scope="session" type="beans.User"/>
<jsp:useBean id="categoriesWithDetails" scope="request" type="java.util.List<beans.Category>"/>
<jsp:useBean id="childcategoriesWithDetails" scope="request" type="java.util.List<beans.Category>"/>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">
        <i class="fa fa-home fa-lg"></i>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/Home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/Home/About">
                    About
                </a>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">  Dropdown  </a>
                <ul class="dropdown-menu">
                    <c:forEach var="c" items="${categoriesWithDetails}">
                        <li><a href="${pageContext.request.contextPath}/Product/ByCat?id=${c.catID}" class="dropdown-item" >${c.catName}</a>
                            <ul class="submenu dropdown-menu">

                                <c:forEach var="d" items="${childcategoriesWithDetails}">
                                    <c:if test="${c.catID==d.catID}">
                                        <li><a href="${pageContext.request.contextPath}/Product/ByChildCat?id=${d.childCatID}" class="dropdown-item">${d.childCatName} </a></li>
                                    </c:if>
                                </c:forEach>

                            </ul>
                        </li>
                    </c:forEach>

                </ul>
            </li>


            <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
            </li>
        </ul>
        <form id="frmSearch" class="form-inline my-2 my-lg-0"  action="${pageContext.request.contextPath}/Product/Search">
            <input id="id" name="id" class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"></form>
            <a class="btn btn-outline-success my-2 my-sm-0" href="javascript: $('#frmSearch').submit();">
                <i class="fa fa-search" aria-hidden="true"></i>
                Search
            </a>

        <ul class="navbar-nav">
            <c:choose>
                <c:when test="${auth}">
                    <form id="frmLogout" method="post" action="${pageContext.request.contextPath}/Account/Logout"></form>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            Hi, <b>${authUser.name}</b>!
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                Profile
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="javascript: $('#frmLogout').submit();">
                                <i class="fa fa-sign-out" aria-hidden="true"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Account/Register">
                            <i class="fa fa-user-plus" aria-hidden="true"></i>
                            Register
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Account/Login">
                            <i class="fa fa-sign-in" aria-hidden="true"></i>
                            Login
                        </a>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</nav>