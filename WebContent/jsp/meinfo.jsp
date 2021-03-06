<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="controller.ControllerParamHandler" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<jsp:useBean id="cons" class="controller.ControllerParamHandler" scope="session"/>

<fmt:setLocale value="${sessionScope[cons.SESSION_LANGUAGE]}" />
<fmt:setBundle basename="${cons.PARAM_PATH}" />

<c:set var="person" value="${requestScope[cons.ME_INFO_PERSON]}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="${contextPath}/css/multrowdata.css" rel="stylesheet" type="text/css" />
	<title><fmt:message key="text.meinfo.title" /></title>
</head>
<body>
	<div class="infoBlock">
		<table class="tabledata">
			<tr class="tritem">
				<td class="tditem tddata2col">
					<fmt:message key="text.meinfo.personid" />
				</td>
				<td class="tditem tddata2col">
					${person.id}
				</td>
			</tr>
			<tr class="tritem">
				<td class="tditem tddata2col">
					<fmt:message key="text.meinfo.fname" />
				</td>
				<td class="tditem tddata2col">
					${person.fname}
				</td>
			</tr>
			<tr class="tritem">
				<td class="tditem tddata2col">
					<fmt:message key="text.meinfo.sname" />
				</td>
				<td class="tditem tddata2col">
					${person.sname}
				</td>
			</tr>
			<tr class="tritem">
				<td class="tditem tddata2col">
					<fmt:message key="text.meinfo.address" />
				</td>
				<td class="tditem tddata2col">
					${person.address}
				</td>
			</tr>
		</table>
	</div>
</body>
</html>