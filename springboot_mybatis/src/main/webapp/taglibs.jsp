<%@ taglib prefix="fn"       uri="http://java.sun.com/jstl/fn"%>
<%@ taglib prefix="c"        uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="spring"   uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt"      uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<c:set var="basePath" scope="session" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>
