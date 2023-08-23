<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>I18N Demo</title>
</head>
<body>
	View website in :
	<a href="?locale=en_US">English(US)</a>|
	<a href="?locale=ar_SA">Arabic(Sa)</a>
	<br/>
	<br/>
	<hr/>
	
	<fmt:setLocale value="${param.locale}"/>
	<fmt:bundle basename="I18N/website">
		<p><fmt:message key="label.hello"/> Bader,
		<p><fmt:message key="label.welcome"/>
		<p><fmt:message key="label.message"/>
		<p><fmt:message key="label.thanks"/>
	</fmt:bundle>
	
	<br/>
	<hr/>
	
	<c:out value="${
		empty param.locale ?
	 	'Locale is empty or null' : 'Locale is NOT empty or null'
	 	}" />
	<br/>
	<c:choose>
		<c:when test="${not empty  param.locale}">
			Locale: ${param.locale}
		</c:when>
		
		<c:otherwise>
			Not select locale yet.
		</c:otherwise>
	</c:choose>

	
	
</body>
</html>