<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="product" scope="request" type="beans.Product"/>
<jsp:useBean id="userDetail" scope="request" type="beans.User"/>

<t:main>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <h4>${product.proName}</h4>
            </div>

            <div class="card-body">
                <img width="800px" height="400px" alt="${product.proName}" title="${product.proName}" src="${pageContext.request.contextPath}/publicsss/imgs/sp/${product.proID}/main_thumbs.jpg">
                <div class="card-footer d-sm-flex justify-content-sm-between align-items-sm-center">
                    <ul class="list-inline list-inline-dotted mb-0">
                        <li class="list-inline-item"><i class="fa fa-user mr-1"></i> 272</li>
                        <li class="list-inline-item"><i class="fa fa-calendar-check-o mr-1"></i> 15 hours</li>
                        <li class="list-inline-item"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <span class="text-muted ml-1">(12)</span> </li>
                    </ul>
                </div>
                <p class="card-text mt-3">
                    Giá bán:
                    <span class="text-danger font-weight-bold">
                        <fmt:formatNumber value="${product.price}" type="number"/>
                    </span>
                <p class="card-text">${product.fullDes}</p>
                <p class="card-text">${product.fullDes1}</p>
                <p class="card-text">${product.fullDes2}</p>
                </p>

                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header" id="headingFour">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    Nội dung khóa học
                                </button>
                            </h2>
                        </div>
                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                            <div class="card-body">
                                <p class="card-text">${product.content}</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingFive">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    Thông tin giảng viên
                                </button>
                            </h2>
                        </div>
                        <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                            <div class="card-body">
                                <h2><a href="#" style="text-decoration: none; "> ${userDetail.name}</a></h2>
                                <p class="card-text">${userDetail.des}</p>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

        </div>
        <script>
            $j(document).ready(function()
            {
                $j('.toggleAddTag').click(function(event)
                {
                    $j('#addTag').slideToggle('fast');
                    event.preventDefault();
                });
                colorVisibleTableRows("table", "white", "whitesmoke");
            });
        </script>

        <style>
            form {display: inline; }
        </style>

        <h2>
            <spring:message code="feedback.infoFeedback"/>
        </h2>
        <div id="feedbackPhotoDialog">
            <img src="<openmrs:contextPath/>/moduleServlet/feedback/fileDownloadServlet?feedbackId=<c:out value="${feedback.feedbackId}"/>" >
        </div>

        <b class="boxHeader"><spring:message code="feedback.manage.form.basic"/></b>
        <div class="box" >
            <table id="table">
                <tr>
                </tr>
                <tr>
                    <th width="100"><spring:message code="feedback.feedbackId"/></th>
                    <td><c:out value="${feedback.feedbackId} "/> </td>
                </tr>
                <tr>
                    <th width="300"><spring:message code="feedback.creator"/></th>
                    <td><c:out value="${feedback.creator.personName} "/> </td>
                </tr>
                <tr>
                    <th width="400"><spring:message code="feedback.subject"/></th>
                    <td><c:out value="${feedback.subject} "/> </td>
                </tr>
                <tr>
                    <th width="300"><spring:message code="feedback.severity"/></th>
                    <td><c:out value="${feedback.severity} "/> </td>
                </tr>
                <tr>
                    <th width="400"><spring:message code="feedback.status"/></th>
                    <td>
                        <c:out value="${feedback.status}"/>
                    </td>
                </tr>
                <tr>
                    <th width="400"><spring:message code="feedback.dateCreated"/></th>
                    <td><openmrs:formatDate date="${feedback.dateCreated}" type="long" /></td>
                </tr>

                <tr>
                    <th width="400"><spring:message code="feedback.pageinfo"/></th>
                    <td>
                        <c:out value="${feedback.pageinfo}"/>
                    </td>
                </tr>

                <tr>
                    <th width="400"><spring:message code="feedback.content"/></th>
                    <td>
                        <a class="toggleAddTag" href="#"><spring:message code="feedback.content.view"/></a>
                        <div id="addTag" style="border: 1px black solid; background-color: #e0e0e0; display: none">
                            <c:out value="${feedback.content}"/>
                        </div>
                    </td>
                </tr>
            </table>
        </div>


        <b class="boxHeader"><spring:message code="feedback.manage.form.attach"/></b>
        <div class="box" >
            <table id="table2">

                <tr>
                    <th width="400"><spring:message code="feedback.attachment.label"/></th>
                    <td>
                        <a href="javascript:fdbkPhotoPopUp()" >
                            <img src="<openmrs:contextPath/>/moduleServlet/feedback/fileDownloadServlet?feedbackId=<c:out value="${feedback.feedbackId}"/>" height="100" width="100">
                            </img>
                        </a>
                    </td>
                </tr>

                <tr>
                    <th width="400"><spring:message code="feedback.screenshot.label"/></th>
                    <td>
                        <a target="_blank" href="<openmrs:contextPath/>/moduleServlet/feedback/fileDownloadServlet?feedbackScreenshotId=<c:out value="${feedback.feedbackId}"/>" >
                            <img src="<openmrs:contextPath/>/moduleServlet/feedback/fileDownloadServlet?feedbackScreenshotId=<c:out value="${feedback.feedbackId}"/>" height="200" width="400">
                            </img>
                        </a>
                    </td>
                </tr>

            </table>
        </div>



        <%----%>

        <openmrs:hasPrivilege privilege="Admin Feedback">

            <b class="boxHeader"><spring:message code="feedback.manage.form.assign"/></b>
            <div class="box" >
                <table id="table4">

                    <tr>
                        <th width="400"><spring:message code="feedback.assigned.user"/> </th>
                        <form method="post">
                            <td>
                                <input type=hidden name=feedbackId value=<c:out value="${feedback.feedbackId}"/> >
                                <select name="delAssignedUser">
                                    <c:forEach items="${assigned_users}" var="usersObj" >
                                        <option value="<c:out value="${usersObj.username}"/>"> <c:out value="${usersObj.username}"/> </option>
                                    </c:forEach>
                                        <%--<option value="-" selected="selected">-</option>--%>
                                </select>
                            </td>
                            <td>
                                <input type="submit" id="delAssigned" name="delAssigned" value="<spring:message code="feedback.delete.user" />" />
                            </td>
                        </form>
                    </tr>
                    <tr>
                        <th></th>
                        <form method="post">
                            <td>
                                <input type=hidden name=feedbackId value=<c:out value="${feedback.feedbackId}"/> >
                                <select name="addAssignedUser">
                                    <c:forEach items="${allusers}" var="usersObj" >
                                        <option value="<c:out value="${usersObj.username}"/>"> <c:out value="${usersObj.username}"/> </option>
                                    </c:forEach>
                                        <%--<option value="-" selected="selected">-</option>--%>
                                </select>
                            </td>
                            <td>
                                <input type="submit" id="addAssigned" name="addAssigned" value="<spring:message code="feedback.add.user" />" />

                            </td>
                        </form>
                    </tr>
                </table>
            </div>

        </openmrs:hasPrivilege>
        <%----%>

        <openmrs:hasPrivilege privilege="Admin Feedback">
            <b class="boxHeader"><spring:message code="feedback.manage.form.status"/></b>
            <div class="box" >
                <table id="table5">
                    <tr>
                        <th width="400"><spring:message code="feedback.status"/></th>
                        <td>
                            <form method="post">
                                <input type=hidden name=feedbackId value=<c:out value="${feedback.feedbackId}"/> >
                                <select name="status">
                                    <c:forEach items="${statuses}" var="statusObj" >
                                        <option value="<c:out value="${statusObj.status}"/>"> <c:out value="${statusObj.status}"/> </option>
                                    </c:forEach>
                                    <option value="-" selected="selected">-</option>
                                </select>
                                <input type="submit" value="<spring:message code="feedback.status.change" />" />
                            </form>
                        </td>

                    </tr>

                </table>
            </div>
        </openmrs:hasPrivilege>


        <openmrs:hasPrivilege privilege="Admin Feedback">
            <%--<b class="boxHeader"><spring:message code="feedback.manage.form.comments"/></b>--%>
            <div class="box" >

                <table id="table75">
                    <tr>
                        <th width="400"></th>
                        <td>
                                <%--<form method="post">--%>
                                <%--<input type=hidden name=delete value= "1"/>--%>
                                <%--<input type=hidden name=feedbackId value="${feedback.feedbackId}"/>--%>
                                <%--<input type="submit" value="<spring:message code="feedback.delete"/>" />--%>
                                <%--</form>--%>
                            <form method="get" action="<openmrs:contextPath/>/module/feedback/forwardFeedback.form">
                                <input type=hidden name=feedbackId value="${feedback.feedbackId}"/>
                                <input type="submit" value="<spring:message code="feedback.forward"/>" />
                            </form>
                        </td>
                    </tr>

                </table>
            </div>
        </openmrs:hasPrivilege>


        <b class="boxHeader"><spring:message code="feedback.manage.form.add.comment"/></b>
        <div class="box" >
            <table id="table6">

                <form method="post"   enctype="multipart/form-data">
                    <tr>
                        <th width="400"><spring:message code="feedback.attachment"/> </th>
                        <td><input type="file" accept="image" name="file" size="40" />
                            <div class="description">
                                <spring:message code="feedback.attachment.comment.mandatory"/>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top"><spring:message code="feedback.comment"/> </th>
                        <td><textarea name="comment" rows="10" cols="120" type="_moz" size="35"></textarea> </td>
                    </tr>

                    <td>
                    </td>
                    <td>
                        <input type=hidden name=feedbackId value=<c:out value="${feedback.feedbackId}"/> >
                        <input type="submit" value="<spring:message code="feedback.comment.add" />" />
                    </td>
                </form>

            </table>
        </div>


        <b class="boxHeader"><spring:message code="feedback.manage.form.comments"/></b>
        <div class="box" >
                <%--<table id="table3">--%>
                <%--<tr>--%>
                <%--<th width="400"><spring:message code="feedback.reply.list"/></th>--%>
                <%--<td colspan="2">--%>
            <c:forEach items="${comments}" var="commentObj" >
                <c:out value="${commentObj.comment}"/>
                <div class="description">
                    <c:if test="${not empty commentObj.attachment}">
                        <a href="<openmrs:contextPath/>/moduleServlet/feedback/fileDownloadServlet?feedbackCommentId=<c:out value="${commentObj.feedbackCommentId}"/> ">
                            Attachment
                        </a>
                    </c:if >

                    <c:out value="${commentObj.creator.personName}"/>
                    <kc:prettyTime date="${commentObj.dateCreated}"></kc:prettyTime>
                </div>
            </c:forEach>
                <%--</td>--%>
                <%--</tr>--%>
                <%--</table>--%>
        </div>
    </jsp:body>
</t:main>