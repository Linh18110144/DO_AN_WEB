<%@ page contentType="text/html; charset=utf-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="authUser" scope="session" type="beans.User"/>

<t:home>
   <jsp:attribute name="css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
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
                   if (data1 === true )
                   {
                       if ((newpassword === confirm) | ((newpassword.length===0) & (confirm.length===0))){
                           $('#frmProfile').off('submit').submit();
                       }else{
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
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-xl-9 mx-auto">
                        <div class="card card-signin flex-row my-5">
                            <div class="card-img-left d-none d-md-flex">
                                <!-- Background image for card set in CSS! -->
                            </div>
                            <div class="card-body">
                                <div class="card-title text-center" style="color: #495057"><h2>Profile</h2></div>
                                <form class="form-signin">
                                    <c:if test="${hasErrorProfile}">
                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            <strong>${errorMessageProfile}</strong>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                    </c:if>
                                    <hr>

                                    <h5 class="mt-4">Personal Information</h5>
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="txtName" name="name" placeholder="Name" value="${authUser.name}" required>
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="txtEmail" name="email" placeholder="Email" value="${authUser.email}" required>
                                    </div>

                                    <hr>
                                    <h5 class="mt-4">Account</h5>

                                    <div class="form-group">
                                        <input type="password" class="form-control" id="txtPassword" name="password" placeholder="Password" >
                                    </div>

                                    <div class="form-group">
                                        <input type="password" class="form-control" id="txtNewPassword" name="newpassword" placeholder="NewPassword" >
                                    </div>

                                    <div class="form-group">
                                        <input type="password" class="form-control" id="txtConfirm" name="confirm" placeholder="Confirm" >
                                    </div>

                                    <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <a class="btn btn-lg btn-outline-info " style="display: flex; justify-content: center" href="${pageContext.request.contextPath}/Account/Watchlist" role="button">
                    <i class="fa fa-heart" aria-hidden="true"></i>
                    Watchlist
                </a>
            </div>
        </form>

    </jsp:body>
</t:home>