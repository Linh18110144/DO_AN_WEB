<%@ page contentType="text/html; charset=utf-8" %>
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
            if (((newpassword.length !== 0) & (confirm.length===0)) | ((newpassword.length === 0) & (confirm.length!==0)))
            {

                alert('Not available');
                return;
            }
            if(newpassword !== confirm){
                alert('Not available');
                return;
            }


            const email = $('#txtEmail').val();

                    $.getJSON('${pageContext.request.contextPath}/Account/IsEmailAvailable?user=' + email, function (data1) {
                        if (data1 === true | (email.length === 0) | ((${authUser.email})===email)    ) {
                            $('#frmProfile').off('submit').submit();
                        } else {
                            alert('Email is used.');
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
                                    <hr>
                                    <h5 class="mt-4">Account</h5>

                                    <div class="form-group">
                                        <input type="password" class="form-control" id="txtPassword" name="password" placeholder="Password" required>
                                    </div>

                                    <div class="form-group">
                                        <input type="password" class="form-control" id="txtNewPassword" name="newpassword" placeholder="NewPassword" >
                                    </div>

                                    <div class="form-group">
                                        <input type="password" class="form-control" id="txtConfirm" name="confirm" placeholder="Confirm" >
                                    </div>

                                    <h5 class="mt-4">Personal Information</h5>
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="txtName" name="name" placeholder="Name" value="${authUser.name}" required>
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="txtEmail" name="email" placeholder="Email" value="${authUser.email}" required>
                                    </div>



                                    <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </jsp:body>
</t:home>