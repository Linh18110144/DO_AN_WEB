<%@ page contentType="text/html; charset=utf-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="authUser" scope="session" type="beans.User"/>

<t:profile>
   <jsp:attribute name="css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
  </jsp:attribute>

    <jsp:attribute name="js">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
    <script>
        $('#frmProfile').on('submit', function (e) {
            e.preventDefault();

            const newpassword = $('#txtNewPassword').val();
            const confirm = $('#txtConfirm').val();

            var email = $('#txtEmail').val();
            $.getJSON('${pageContext.request.contextPath}/Account/IsEmailAvailable?email=' + email, function (data1) {
                if (data1 === true) {
                    if ((newpassword === confirm) | ((newpassword.length === 0) & (confirm.length === 0))) {
                        $('#frmProfile').off('submit').submit();
                    } else {
                        alert('Not available.');
                        location.replace("${pageContext.request.contextPath}/Account/Profile");
                    }

                } else {
                    alert('Email is used.');
                    location.replace("${pageContext.request.contextPath}/Account/Profile");
                }
            });


        });

    </script>
  </jsp:attribute>

    <jsp:body>
        <form method="post" id="frmProfile">
        <form class="form-signin">
            <c:if test="${hasErrorProfile}">
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <strong>${errorMessageProfile}</strong>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </c:if>

            <div class="page-content page-container" id="page-content">
                <div class="padding">
                    <div class="row container d-flex justify-content-center">
                        <div class="col-xl-6 col-md-12">
                            <div class="card user-card-full">
                                <div class="row m-l-0 m-r-0">
                                    <div class="col-sm-4 bg-c-lite-green user-profile">
                                        <div class="card-block text-center text-white">
                                            <div class="m-b-25"><img width="130px" height="150px"
                                                    src="${pageContext.request.contextPath}/publicsss/imgs/avarta.jpg"
                                                    class="img-radius" alt="User-Profile-Image"></div>
                                            <h6 class="f-w-600">${authUser.name}</h6>
                                            <p>Web Designer</p> <i
                                                class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
                                            <a class="btn btn-lg btn-outline-dark " href="${pageContext.request.contextPath}/Account/Watchlist" role="button">
                                                <i class="fa fa-heart" aria-hidden="true"></i>
                                                Watchlist
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="card-block">
                                            <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Personal Information</h6>

                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Name</p>
                                                    <h6 class="text-muted f-w-400"><input style="width: 250px" type="text" class="form-control" id="txtName" name="name" placeholder="Name" value="${authUser.name}" required></h6>
                                                </div>
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Email</p>
                                                    <h6 class="text-muted f-w-400"><input style="width: 250px" type="text" class="form-control" id="txtEmail" name="email" placeholder="Email" value="${authUser.email}" required></h6>
                                                </div>

                                            <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Account</h6>

                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Password</p>
                                                    <h6 class="text-muted f-w-400"><input style="width: 250px" type="password" class="form-control" id="txtPassword" name="password" placeholder="Password" ></h6>
                                                </div>
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">New Password</p>
                                                    <h6 class="text-muted f-w-400"><input style="width: 250px" type="password" class="form-control" id="txtNewPassword" name="newpassword" placeholder="NewPassword" ></h6>
                                                </div>
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Confirm</p>
                                                    <h6 class="text-muted f-w-400"><input style="width: 250px" type="password" class="form-control" id="txtConfirm" name="confirm" placeholder="Confirm" ></h6>
                                                </div>

                                            <button style="margin-top: 20px" class="btn btn-lg btn-dark btn-block text-uppercase" type="submit">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        </form>

    </jsp:body>
</t:profile>