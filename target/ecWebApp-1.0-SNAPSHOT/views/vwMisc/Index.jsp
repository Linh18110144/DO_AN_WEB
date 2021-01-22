<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>



<t:main>
    <jsp:attribute name="css">
        <link rel="stylesheet" href="https://cdn.plyr.io/3.6.3/plyr.css" />
    </jsp:attribute>
  <jsp:attribute name="js">
    <script src="https://cdn.plyr.io/3.6.3/plyr.js"></script>
  </jsp:attribute>

    <jsp:body>
        <div class="container">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/hpHOuoic3WA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <p>Tên khóa học</p>

            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Active</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
        </div>
    </jsp:body>
</t:main>

