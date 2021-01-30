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

  </jsp:attribute>

    <jsp:body>
        <form method="post" id="frmProfileTea">
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


                                    <textarea name="des" rows="10" cols="105" > ${authUser.des} </textarea>
                                    <hr>
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