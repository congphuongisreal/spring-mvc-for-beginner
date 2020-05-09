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
    <title>NPC <spring:message code="product"/></title>
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
                    <c:url value="/product/update" var="url"></c:url>
                    <form:form method="POST" action="${url}" modelAttribute="productObj">
                        <div class="modal-header">
                            <h5 class="modal-title"><spring:message code="product"/></h5>
                        </div>
                        <div class="modal-body">
                            <div class="card-body">
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="productId"><spring:message
                                                    code="code"/></label>
                                            <form:input type="text" class="form-control"
                                                        readonly="true"
                                                        path="productId"></form:input>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="name"><spring:message
                                                    code="nameProduct"/></label>
                                            <form:input type="text"
                                                        placeholder="Name Product..." class="form-control"
                                                        readonly="${readonly}"
                                                        path="name"></form:input>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="name"><spring:message
                                                    code="unit"/></label>
                                            <form:input type="text"
                                                        placeholder="Unit..." class="form-control"
                                                        readonly="${readonly}"
                                                        path="unit"></form:input>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="name"><spring:message
                                                    code="number"/></label>
                                            <form:input type="number"
                                                        placeholder="Number..." class="form-control"
                                                        readonly="${readonly}"
                                                        path="number"></form:input>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="name"><spring:message
                                                    code="color"/></label>
                                            <form:input type="text"
                                                        placeholder="Color..." class="form-control"
                                                        readonly="${readonly}"
                                                        path="color"></form:input>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="name"><spring:message
                                                    code="size"/></label>
                                            <form:input type="text"
                                                        placeholder="Size..." class="form-control"
                                                        readonly="${readonly}"
                                                        path="size"></form:input>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="name"><spring:message
                                                    code="typeProduct"/></label>
                                            <form:input type="text"
                                                        placeholder="Type..." class="form-control"
                                                        readonly="${readonly}"
                                                        path="type.typeId"></form:input>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="name"><spring:message
                                                    code="price"/></label>
                                            <form:input type="number"
                                                        placeholder="Price..." class="form-control"
                                                        readonly="${readonly}"
                                                        path="price"></form:input>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-lg-3">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="name"><spring:message
                                                    code="entryPrice"/></label>
                                            <form:input type="number"
                                                        placeholder="Entry Price..." class="form-control"
                                                        readonly="${readonly}"
                                                        path="entryPrice"></form:input>
                                        </div>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="position-relative form-group">
                                            <label class="mr-sm-2" for="name"><spring:message
                                                    code="note"/></label>
                                            <form:textarea type="text"
                                                           placeholder="Note..." class="form-control"
                                                           readonly="${readonly}"
                                                           path="note"></form:textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <a href="<c:url value="/product" />" type="submit" class="btn btn-secondary">
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
