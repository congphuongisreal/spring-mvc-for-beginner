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
    <title>NPC <spring:message code="provider"/></title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no"/>
    <link rel="stylesheet" href="<c:url value="/resource/main.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resource/css/mycss.css"/>"/>
</head>
<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
    <%@ include file="menu.jsp" %>
    <div class="app-main">
        <%@ include file="navbar.jsp" %>
        <div class="app-main__outer">
            <div class="app-main__inner">
                <div class="app-page-title">
                    <div class="page-title-wrapper">
                        <div class="page-title-heading">
                            <div class="page-title-icon">
                                <i class="fas fa-users icon-gradient bg-plum-plate"></i>
                            </div>
                            <div><spring:message code="prodvider"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="main-card mb-3 card">
                            <div class="card-header"><spring:message code="tableProvider"/>
                                <div class="btn-actions-pane-right">
                                    <div role="group" class="btn-group-sm btn-group">
                                        <button type="button" class="btn btn-success" data-toggle="modal"
                                                data-target=".bd-example-modal-lg">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                    <i class="fas fa-plus"></i>
                                                </span><spring:message code="addition"/>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="mb-0 table table-hover">
                                    <thead>
                                    <tr>
                                        <th class="text-center"><spring:message code="code"/></th>
                                        <th class="text-center"><spring:message code="fullName"/></th>
                                        <th class="text-center"><spring:message code="phoneNumber"/></th>
                                        <th class="text-center"><spring:message code="email"/></th>
                                        <th class="text-center"><spring:message code="address"/></th>
                                        <th class="text-center"><spring:message code="function"/></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${providers}" var="provider">
                                        <tr>
                                            <th class="text-center" scope="row">${provider.providerId}</th>
                                            <td class="text-center">${provider.name}</td>
                                            <td class="text-center">${provider.phoneNumber}</td>
                                            <td class="text-center">${provider.email}</td>
                                            <td class="text-center">${provider.address}</td>
                                            <td class="text-center">
                                                <a href="provider/info/${provider.providerId}" type="submit"
                                                   class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pl-2 pr-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                </a>
                                                <a href="provider/update/${provider.providerId}" type="submit"
                                                   class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pl-2 pr-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                </a>
                                                <a href="provider/delete/${provider.providerId}" type="submit"
                                                   class="mb-2 mr-2 btn-transition btn btn-outline-danger">
                                                            <span class="btn-icon-wrapper pl-2 pr-2 opacity-7">
                                                                    <i class="fas fa-trash"></i>
                                                                </span>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/resource/assets/scripts/main.js"/>"></script>
</body>
</html>
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <c:url value="/provider/add" var="url"></c:url>
            <form:form method="POST" action="${url}" modelAttribute="providerObj">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"><spring:message code="provider"/></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-lg-6">
                                <div class="position-relative form-group">
                                    <label for="name" class=""><spring:message code="nameProvider"/></label>
                                    <form:input type="text"
                                                placeholder="Name..." class="form-control"
                                                path="name"></form:input>
                                    <form:errors cssClass="error" path="name"/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="position-relative form-group">
                                    <label for="phoneNumber" class=""><spring:message code="phoneNumber"/></label>
                                    <form:input type="text"
                                                placeholder="Phone Number..." class="form-control"
                                                path="phoneNumber"></form:input>
                                    <form:errors cssClass="error" path="phoneNumber"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-6">
                                <div class="position-relative form-group">
                                    <label for="email" class="">Email</label>
                                    <form:input type="email"
                                                placeholder="Email..." class="form-control"
                                                path="email"></form:input>
                                    <form:errors cssClass="error" path="email"/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="position-relative form-group">
                                    <label for="address" class="">Email</label>
                                    <form:input type="text"
                                                placeholder="Address..." class="form-control"
                                                path="address"></form:input>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <button type="submit" class="btn btn-primary"><spring:message code="addition"/></button>
                </div>
            </form:form>
        </div>
    </div>
</div>