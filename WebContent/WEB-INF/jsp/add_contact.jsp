<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Spring 3 MVC Multipe Row Submit - viralpatel.net</title>
</head>
<body>

<h2>Spring MVC Multiple Row Form Submit example</h2>
<form:form method="post" action="save.html" modelAttribute="contactForm">
	<table>
	<tr>
		<th>No.</th>
		<th>Name</th>
		<th>Lastname</th>
		<th>Email</th>
		<th>Phone</th>
	</tr>
	<c:if test="${contactForm.contacts != null}" >
		<c:forEach items="${contactForm.contacts}" var="contact" varStatus="status">
			<tr>
				<%-- <td align="center">${status.count}</td>
				<td><form:input path="contacts[${status.index}].firstname"/></td>
				<td><form:input path="contacts[${status.index}].lastname"/></td>
				<td><form:input path="contacts[${status.index}].email"/></td>
				<td><form:input path="contacts[${status.index}].phone"/></td> --%>
				
				<td align="center">${status.count}</td>
				<td><input name="contacts[${status.index}].firstname" value="${contact.firstname}"/></td>
				<td><input name="contacts[${status.index}].lastname" value="${contact.lastname}"/></td>
				<td><input name="contacts[${status.index}].email" value="${contact.email}"/></td>
				<td><input name="contacts[${status.index}].phone" value="${contact.phone}"/></td>
			</tr>
		</c:forEach>
	</c:if>
	<tr>
		<td align="center">*</td>
		<td><form:input path="firstname" /></td>
		<td><form:input path="lastname" /></td>
		<td><form:input path="email" /></td>
		<td><form:input path="phone" /></td>
	</tr>
</table>	
<br/>
<input type="submit" value="Save" />
	
</form:form>
</body>
</html>