<%-- 
    bootStrap input
    ブートストラップ用の雛形を作る。
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="key"%>
<%@attribute name="label"%>
<%@attribute name="labelClass"%>

<%-- any content can be specified here e.g.: --%>
<c:set var="error" value="${requestScope['org.apache.struts.action.ERROR']}"/>
<div id="fg_${key}" class="form-group  ${error ne null && error.size(key) >0  ? 'has-error' : ''}">
    <label for="${key}" class="${labelClass}" >${label}</label>
    <jsp:doBody />
</div>