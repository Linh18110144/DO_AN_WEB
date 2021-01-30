<%@ page contentType="text/html; charset=utf-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/publicsss/css/Register.css">
<t:home>
   <jsp:attribute name="css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
  </jsp:attribute>

    <jsp:attribute name="js">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
    <script>
        $('#frmRegister').on('submit', function (e) {
            e.preventDefault();

            const username = $('#txtUsername').val();
            if (username.length === 0) {
                alert('Invalid username.');
                return;
            }

            const confirm = $('#txtConfirm').val();
            const password = $('#txtPassword').val();
            if (password.length === 0 | confirm.length === 0) {
                alert('Not available.');
                return;
            }
            if(confirm !== password)
            {
                alert('Confirm false.');
                return;
            }

            const email = $('#txtEmail').val();
            $.getJSON('${pageContext.request.contextPath}/Account/IsAvailable?user=' + username, function (data) {
                if (data === true) {
                    $.getJSON('${pageContext.request.contextPath}/Account/IsEmailAvailable?user=' + email, function (data1) {
                        if (data1 === true | (email.length === 0) ) {
                            $('#frmRegister').off('submit').submit();
                        } else {
                            alert('Email is used.');
                        }
                    });
                    e.preventDefault();
                } else {
                    alert('Not available.');
                }
            });
        });
        $('#txtDOB').datetimepicker({
            format: 'd/m/Y',
            timepicker: false,
            mask: true,
        });

        $('#txtUsername').select();
    </script>
  </jsp:attribute>

    <jsp:body>
        <form method="post" id="frmRegister">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-xl-9 mx-auto">
                        <div class="card card-signin flex-row my-5">
                            <div class="card-img-left d-none d-md-flex">
                                <!-- Background image for card set in CSS! -->
                            </div>
                            <div class="card-body">
                                <h5 class="card-title text-center" style="color: #495057"><b>Register</b></h5>
                                <form class="form-signin">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="txtUsername" name="username" placeholder="Username" required>
                                    </div>

                                    <div class="form-group">
                                        <input type="password" class="form-control" id="txtPassword" name="password" placeholder="Password" required>
                                    </div>

                                    <div class="form-group">
                                        <input type="password" class="form-control" id="txtConfirm" name="confirm" placeholder="Confirm" required>
                                    </div>

                                    <hr>

                                    <h5 class="mt-4">Personal Information</h5>
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="txtName" name="name" placeholder="Name" required>
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="txtEmail" name="email" placeholder="Email" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="txtDOB">Date of Birth</label>
                                        <input type="text" class="form-control" id="txtDOB" name="dob">
                                    </div>

                                    <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>
                                    <a class="d-block text-center mt-2 small" href="${pageContext.request.contextPath}/Account/Login">Already have account!</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </jsp:body>
</t:home>