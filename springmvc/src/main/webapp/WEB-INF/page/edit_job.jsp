<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>NPC <spring:message code="department"/></title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no"/>
    <link rel="stylesheet" href="<c:url value="/resource/main.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resource/css/mycss.css"/>"/>

</head>
<body>
<div class="app-container app-theme-white body-tabs-line fixed-sidebar fixed-header">
    <%@ include file="menu.jsp" %>
    <div class="app-main">
        <%@ include file="navbar.jsp" %>
        <div class="app-main__outer">
            <div class="app-main__inner form_edit">
                <div class="modal-content">
                    <c:url value="/job/update" var="url"></c:url>
                    <form:form method="POST" action="${url}" modelAttribute="jobObj">
                        <div class="modal-header">
                            <h5 class="modal-title"><spring:message code="department"/></h5>
                        </div>
                        <div class="modal-body">
                            <div class="card-body">
                                <div class="form-row">
                                    <div class="col-lg-4">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="jobId"><spring:message
                                                    code="code"/></label>
                                            <form:input type="text" class="form-control"
                                                        readonly="true"
                                                        path="jobId"></form:input>
                                        </div>
                                    </div>
                                    <div class="col-lg-8">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="name"><spring:message
                                                    code="nameJob"/></label>
                                            <form:input type="text"
                                                        placeholder="Name Job..." class="form-control" readonly="${readonly}"
                                                        path="name"></form:input>
                                            <form:errors path="name" cssClass="error"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <a href="<c:url value="/department" />" type="button" class="btn btn-secondary">
                                <spring:message code="close"/></a>
                            <c:if test="${check  != 1}">
                                <button type="submit" class="btn btn-primary"><spring:message code="update"/></button>
                            </c:if>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/resource/assets/scripts/main.js"/>"></script>
</body>
</html>
