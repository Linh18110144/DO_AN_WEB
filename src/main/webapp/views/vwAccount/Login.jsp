<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce Web Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/publicsss/css/Login.css">
    back g
</head>
<body>
<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
    <div class="card card0 border-0">
        <div class="row d-flex">
            <div class="col-lg-6">
                <div class="card1 pb-5">
                    <br>
                    <br>
                    <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="https://i.imgur.com/uNGdWHi.png" class="image"> </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card2 card border-0 px-4 py-5">
                    <div class="row mb-4 px-3">
                        <h6 class="mb-0 mr-4 mt-2">Sign in with</h6>
                        <div class="facebook text-center mr-3">
                            <div class="fa fa-facebook"></div>
                        </div>
                        <div class="twitter text-center mr-3">
                            <div class="fa fa-twitter"></div>
                        </div>
                        <div class="linkedin text-center mr-3">
                            <div class="fa fa-linkedin"></div>
                        </div>
                    </div>
                    <div class="row px-3 mb-4">
                        <div class="line"></div> <small class="or text-center">Or</small>
                        <div class="line"></div>
                    </div>
                    <c:if test="${hasError}">
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <strong>Login failed!</strong> ${errorMessage}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    </c:if>
                    <form method="post">
                        <div class="form-group">
                            <div class="input-group">
                                <input class="form-control form-control-lg border-right-0 border" placeholder="User name" type="text" name="username" autofocus>
                                <span class="input-group-append">
                <div class="input-group-text bg-white">
                  <i class="fa fa-user" aria-hidden="true"></i>
                </div>
              </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <input class="form-control form-control-lg border-right-0 border" placeholder="Password" type="password" name="password">
                                <span class="input-group-append">
                <div class="input-group-text bg-white">
                  <i class="fa fa-key" aria-hidden="true"></i>
                </div>
              </span>
                            </div>
                        </div>
                        <div class="form-group d-flex">
                            <div>
                                <a class="btn btn-lg btn-outline-info btn-block" href="${pageContext.request.contextPath}/Home" role="button">
                                    <i class="fa fa-home" aria-hidden="true"></i>
                                    Home
                                </a>
                            </div>
                            <div class="flex-fill ml-1">
                                <button type="submit" class="btn btn-lg btn-info btn-block">
                                    <i class="fa fa-sign-in" aria-hidden="true"></i>
                                    Sign In
                                </button>
                            </div>
                        </div>
                    </form>
                    <div class="row mb-4 px-3"> <small class="font-weight-bold">Don't have an account? <a href="${pageContext.request.contextPath}/Account/Register" class="text-danger ">Register</a></small> </div>
                </div>
            </div>
        </div>
        <div class="bg-blue py-4">
            <div class="row px-3"> <small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2021. Đồ án cuối kì Website.</small>
                <div class="social-contact ml-4 ml-sm-auto"> <span class="fa fa-facebook mr-4 text-sm"></span> <span class="fa fa-google-plus mr-4 text-sm"></span> <span class="fa fa-linkedin mr-4 text-sm"></span> <span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span> </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
