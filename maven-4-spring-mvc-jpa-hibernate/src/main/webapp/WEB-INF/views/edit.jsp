<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:import url="/WEB-INF/views/layout.jsp" charEncoding="UTF-8">
    <c:param name="title" value="Edit User" />
    <c:param name="body">
		<h1>Edit User</h1>
		<form:form method="POST" commandName="user" action="${pageContext.request.contextPath}/edit/${user.id}">
			<table>
				<tbody>
					<tr>
						<td>Login:</td>
						<td><form:input path="login" /></td>
						<td><form:errors path="login" cssStyle="color: red;" /></td>
					</tr>
					<tr>
						<td>First name:</td>
						<td><form:input path="firstName" /></td>
						<td><form:errors path="firstName" cssStyle="color: red;" /></td>
					</tr>
					<tr>
						<td>Last name:</td>
						<td><form:input path="lastName" /></td>
						<td><form:errors path="lastName" cssStyle="color: red;" /></td>
					</tr>
					<tr>
						<td>Level</td>
						<td>
							<c:set var="levels" value="0,10,20,30,40,50,60,70,80" scope="application" />
							<select name="level">
    							<c:forEach items="${fn:split(levels, ',')}" var="level">
							        <option value="${level}" ${user.level == level ? 'selected' : ''}>${level}</option>
							    </c:forEach>
							</select>
						</td>
						<td><form:errors path="level" cssStyle="color: red;" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Update" /></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</form:form>
	</c:param>
</c:import>