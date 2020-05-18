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
    <title>NPC <spring:message code="employee"/></title>
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
                            <div><spring:message code="employee"/>
                            </div>
                        </div>
                    </div>
                </div>
                <c:if test="${success == 1}">
                    <div class="alert alert-danger fade show" >
                        <span class="fas fa-exclamation-triangle"> <spring:message code="notSuccess"/></span> </div>
                </c:if>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="main-card mb-3 card">
                            <div class="card-header"><spring:message code="tableEmployee"/>
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
                                        <th class="text-center"><spring:message code="dob"/></th>
                                        <th class="text-center"><spring:message code="status"/></th>
                                        <th class="text-center"><spring:message code="function"/></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${employees}" var="employee">
                                        <tr>
                                            <th class="text-center" scope="row">${employee.employeeId}</th>
                                            <td class="text-center">${employee.name}</td>
                                            <td class="text-center">${employee.phoneNumber}</td>
                                            <td class="text-center">${employee.email}</td>
                                            <td class="text-center">${employee.dob}</td>
                                            <c:if test="${employee.enable}">
                                                <td class="text-center">
                                                    <div class="badge badge-success"><spring:message
                                                            code="active"/></div>
                                                </td>
                                            </c:if>
                                            <c:if test="${not employee.enable}">
                                                <td class="text-center">
                                                    <div class="badge badge-warning"><spring:message
                                                            code="inactive"/></div>
                                                </td>
                                            </c:if>
                                            <td class="text-center">
                                                <a href="employee/info/${employee.employeeId}" type="submit"
                                                   class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pl-2 pr-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                </a>
                                                <a href="employee/getId/${employee.employeeId}" type="submit"
                                                   class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pl-2 pr-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                </a>
                                                <a href="employee/delete/${employee.employeeId}" type="submit"
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
            <c:url value="/employee/add" var="url"></c:url>
            <form:form method="POST" action="${url}" modelAttribute="employee">

                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"><spring:message code="addEmployee"/></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-lg-6">
                                <div class="position-relative form-group">
                                    <label for="name" class=""><spring:message code="fullName"/></label>
                                    <form:input type="text"
                                                placeholder="Name..." class="form-control"
                                                path="name"></form:input>
                                    <form:errors path="name" cssClass="error"/>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label for="department.departmentId" class=""><spring:message
                                            code="department"/></label>
                                    <form:input type="text"
                                                class="form-control"
                                                path="department.departmentId"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label for="job.jobId" class=""><spring:message code="job"/></label>
                                    <form:input type="text"
                                                class="form-control"
                                                path="job.jobId"></form:input>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label for="phoneNumber" class=""><spring:message code="phoneNumber"/></label>
                                    <form:input type="text"
                                                placeholder="Phone Number..." class="form-control"
                                                path="phoneNumber"></form:input>
                                    <form:errors path="phoneNumber" cssClass="error"/>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label for="gender" class=""><spring:message code="gender"/></label>
                                    <form:input type="text"
                                                placeholder="Gender..." class="form-control"
                                                path="gender"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="position-relative form-group">
                                    <label for="email" class="">Email</label>
                                    <form:input type="email"
                                                placeholder="Email..." class="form-control"
                                                path="email"></form:input>
                                    <form:errors path="email" cssClass="error"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-4">
                                <div class="position-relative form-group">
                                    <label for="dob" class=""><spring:message code="dob"/></label>
                                    <form:input type="date" class="form-control"
                                                path="dob"></form:input>
                                    <form:errors path="dob" cssClass="error"/>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="position-relative form-group">
                                    <label for="address" class=""><spring:message code="address"/></label>
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
