<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:home>
  <jsp:attribute name="css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/5.1.3/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css"/>
  </jsp:attribute>
    <jsp:attribute name="js">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/5.1.3/js/fileinput.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/5.1.3/js/locales/vi.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/5.1.3/themes/fa/theme.min.js"></script>
    <script>
        $('#fuMain').fileinput({
            language: 'vi',
            theme: 'fa',
            // showCaption: false,
            dropZoneEnabled: false,
            allowedFileExtensions: ['jpg', 'png', 'gif', 'mp4']
        });
    </script>
  </jsp:attribute>
    <jsp:body>
        <form method="post" enctype="multipart/form-data">
            <div class="card">
                <div class="card-header">
                    <h4>New Course</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtCourseName">Course</label>
                        <input type="text" class="form-control" id="txtCourseName" name="ProName" autofocus>
                    </div>
                    <div class="form-group">
                        <label for="txtDesc">Course Description</label>
                        <input type="text" class="form-control" id="txtDesc" name="TinyDes">
                    </div>
                    <div class="form-group">
                        <input type="file" id="fuMain" name="fuMain" multiple>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-outline-success">
                    <i class="fa fa-check" aria-hidden="true"></i>
                    Save
                </button>
            </div>
        </form>
    </jsp:body>
</t:home>