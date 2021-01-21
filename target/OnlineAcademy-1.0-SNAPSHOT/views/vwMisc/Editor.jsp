<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:main>
  <jsp:attribute name="js">
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: '#txtDesc',
            height: 450,
            plugins: 'paste image link autolink lists table media',
            menubar: false,
            toolbar: [
                'undo redo | bold italic underline strikethrough | numlist bullist | alignleft aligncenter alignright | forecolor backcolor | table link image media',
            ],
            toolbar_sticky: true
        });
    </script>
  </jsp:attribute>
    <jsp:body>
        <form method="post">
            <div class="card">
                <div class="card-header">
                    <h4>WYSIWYG Editor</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtDesc">Course Description</label>
                        <textarea id="txtDesc" name="desc" autofocus class="form-control"></textarea>
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-outline-success">
                        <i class="fa fa-check" aria-hidden="true"></i>
                        Save
                    </button>
                </div>
            </div>
        </form>
    </jsp:body>
</t:main>