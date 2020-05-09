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
    <title>NPC <spring:message code="invoice"/></title>
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
            <div class="app-main__inner">
                <div class="app-page-title">
                    <div class="page-title-wrapper">
                        <div class="page-title-heading">
                            <div class="page-title-icon">
                                <i class="fas fa-users icon-gradient bg-plum-plate"></i>
                            </div>
                            <div><spring:message code="invoice"/>
                            </div>
                        </div>
                    </div>
                </div>
                <ul class="body-tabs body-tabs-layout tabs-animated body-tabs-animated nav">
                    <li class="nav-item">
                        <a role="tab" class="nav-link active" id="tab-0" data-toggle="tab" href="#tab-content-0">
                            <span><spring:message code="purchaseInvoice"/></span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a role="tab" class="nav-link" id="tab-2" data-toggle="tab" href="#tab-content-2">
                            <span><spring:message code="saleInvoice"/></span>
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-header"><spring:message code="tablePurchaseInvoice"/>
                                        <div class="btn-actions-pane-right">
                                            <div role="group" class="btn-group-sm btn-group">
                                                <button type="button" class="btn btn-success" data-toggle="modal"
                                                        data-target=".modal-create-purchase">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                    <i class="fas fa-plus"></i>
                                                </span><spring:message code="addition"/>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="mb-0 table table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th class="text-center"><spring:message code="code"/></th>
                                                    <th class="text-center"><spring:message code="employee"/></th>
                                                    <th class="text-center"><spring:message code="provider"/></th>
                                                    <th class="text-center"><spring:message code="date"/></th>
                                                    <th class="text-center"><spring:message code="total"/></th>
                                                    <th class="text-center"><spring:message code="status"/></th>
                                                    <th class="text-center"><spring:message code="function"/></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${purchaseInvoices}" var="purchase">
                                                <tr>
                                                    <th class="text-center"
                                                        scope="row">${purchase.purchaseInvoiceId}</th>
                                                    <td class="text-center">${purchase.employee.name}</td>
                                                    <td class="text-center">${purchase.provider.name}</td>
                                                    <td class="text-center">${purchase.date}</td>
                                                    <c:if test="${purchase.enable}">
                                                        <td class="text-center">
                                                            <div class="badge badge-success"><spring:message
                                                                    code="paid"/></div>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${not purchase.enable}">
                                                        <td class="text-center">
                                                            <div class="badge badge-warning"><spring:message
                                                                    code="unpaid"/></div>
                                                        </td>
                                                    </c:if>
                                                    <td class="text-center">
                                                        <a href="purchase/info/${purchase.purchaseInvoiceId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-info">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                        </a>
                                                        <a href="purchase/update/${purchase.purchaseInvoiceId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                        </a>
                                                        <a href="purchase/delete/${purchase.purchaseInvoiceId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-danger">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
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
                    <div class="tab-pane tabs-animation fade" id="tab-content-2" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-header"><spring:message code="tableSaleInvoice"/>
                                        <div class="btn-actions-pane-right">
                                            <div role="group" class="btn-group-sm btn-group">
                                                <button type="button" class="btn btn-success" data-toggle="modal"
                                                        data-target=".modal-create-sale">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                    <i class="fas fa-plus"></i>
                                                </span><spring:message code="addition"/>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="mb-0 table table-hover  table-striped">
                                            <thead>
                                            <tr>
                                                <th class="text-center"><spring:message code="code"/></th>
                                                <th class="text-center"><spring:message code="employee"/></th>
                                                <th class="text-center"><spring:message code="customer"/></th>
                                                <th class="text-center"><spring:message code="date"/></th>
                                                <th class="text-center"><spring:message code="total"/></th>
                                                <th class="text-center"><spring:message code="status"/></th>
                                                <th class="text-center"><spring:message code="function"/></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${saleInvoices}" var="sale">
                                                <tr>
                                                    <th class="text-center" scope="row">${sale.typeId}</th>
                                                    <td class="text-center">${sale.employee.name}</td>
                                                    <td class="text-center">${sale.customer.name}</td>
                                                    <td class="text-center">${sale.date}</td>
                                                    <td class="text-center">
                                                        <c:if test="${sale.enable}">
                                                            <div class="badge badge-success"><spring:message
                                                                    code="paid"/></div>
                                                        </c:if>
                                                        <c:if test="${not sale.enable}">
                                                            <div class="badge badge-warning"><spring:message
                                                                    code="unpaid"/></div>
                                                        </c:if>
                                                    </td>
                                                    <td class="text-center">
                                                        <a href="sale/info/${sale.saleInvoiceId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-info">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                        </a>
                                                        <a href="sale/update/${sale.saleInvoiceId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                        </a>
                                                        <a href="sale/delete/${sale.saleInvoiceId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-danger">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
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
    </div>
</div>
<script type="text/javascript" src="<c:url value="/resource/assets/scripts/main.js"/>"></script>
</body>
</html>
<div class="modal fade modal-create-purchase" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <c:url value="/purchase/add" var="url"></c:url>
            <form:form method="POST" action="${url}" modelAttribute="purchaseObj">
                <div class="modal-header">
                    <h5 class="modal-title"><spring:message code="purchaseInvoice"/></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="employee.employeeId"><spring:message
                                            code="employee"/></label>
                                    <form:input type="text" placeholder="Employee..." class="form-control"
                                                path="employee.employeeId"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="provider.providerId"><spring:message
                                            code="provider"/></label>
                                    <form:input type="text" placeholder="Provider..." class="form-control"
                                                path="provider.providerId"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="address"><spring:message
                                            code="address"/></label>
                                    <form:input type="text"
                                                placeholder="Address..." class="form-control"
                                                path="address"></form:input>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-12">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="note"><spring:message
                                            code="note"/></label>
                                    <form:textarea type="text"
                                                   placeholder="Note..." class="form-control"
                                                   path="note"></form:textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                        <spring:message code="close"/>
                    </button>
                    <button type="submit" class="btn btn-primary"><spring:message code="addition"/></button>
                </div>
            </form:form>
        </div>
    </div>
</div>

<div class="modal fade modal-create-sale" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <c:url value="/sale/add" var="url"></c:url>
            <form:form method="POST" action="${url}" modelAttribute="saleObj">
                <div class="modal-header">
                    <h5 class="modal-title"><spring:message code="saleInvoice"/></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="employee.employeeId"><spring:message
                                            code="employee"/></label>
                                    <form:input type="text" placeholder="Employee..." class="form-control"
                                                path="employee.employeeId"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="customer.customerId"><spring:message
                                            code="customer"/></label>
                                    <form:input type="text" placeholder="Customer..." class="form-control"
                                                path="customer.customerId"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="address"><spring:message
                                            code="address"/></label>
                                    <form:input type="text"
                                                placeholder="Address..." class="form-control"
                                                path="address"></form:input>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-12">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="note"><spring:message
                                            code="note"/></label>
                                    <form:textarea type="text"
                                                   placeholder="Note..." class="form-control"
                                                   path="note"></form:textarea>
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