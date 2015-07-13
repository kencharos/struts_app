<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags/" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:import url="/WEB-INF/template/layout.jsp">
<c:param name="title" value="ログイン"/>
<c:param name="content">
    <h1>login</h1>
    <html:form action="/login" styleClass="form">
        <div class="form-group">
            <tag:bs_input key="id" label="ID">
                <html:text property="id" styleClass="form-control" />
            </tag:bs_input>
            <tag:bs_input key="password" label="password">
                <html:password property="password" styleClass="form-control"  />
            </tag:bs_input>
        </div>
        <html:submit value="Login" styleClass="btn btn-primary"/>
    </html:form>
    
</c:param>
</c:import>