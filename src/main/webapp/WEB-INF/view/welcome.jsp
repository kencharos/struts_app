<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags/" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:import url="/WEB-INF/template/layout.jsp">
<c:param name="title" value="Login Success"/>
<c:param name="content">
    <h1>Hello ${user}</h1>
</c:param>
</c:import>
