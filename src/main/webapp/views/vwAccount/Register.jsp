<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:main>
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

            $.getJSON('${pageContext.request.contextPath}/Account/IsAvailable?user=' + username, function (data) {
                if (data === true) {
                    $('#frmRegister').off('submit').submit();
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
            <div class="card">
                <div class="card-header">
                    <h4>Account Registration</h4>
                </div>
                <div class="card-body">
                    <h5>Account</h5>
                    <div class="form-group">
                        <label for="txtUsername">Username</label>
                        <input type="text" class="form-control" id="txtUsername" name="username">
                    </div>
                    <div class="form-group">
                        <label for="txtPassword">Password</label>
                        <input type="password" class="form-control" id="txtPassword" name="password">
                    </div>
                    <div class="form-group">
                        <label for="txtConfirm">Confirm</label>
                        <input type="password" class="form-control" id="txtConfirm" name="confirm">
                    </div>

                    <h5 class="mt-4">Personal Information</h5>
                    <div class="form-group">
                        <label for="txtName">Name</label>
                        <input type="text" class="form-control" id="txtName" name="name">
                    </div>
                    <div class="form-group">
                        <label for="txtEmail">Email</label>
                        <input type="text" class="form-control" id="txtEmail" name="email">
                    </div>
                    <div class="form-group">
                        <label for="txtDOB">Date of Birth</label>
                        <input type="text" class="form-control" id="txtDOB" name="dob">
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-outline-success">
                        <i class="fa fa-check" aria-hidden="true"></i>
                        Register
                    </button>
                </div>
            </div>
        </form>
    </jsp:body>
</t:main>