<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<h1>Add New Author</h1>
<form:form method="post" action="save.html">
	<table>

		<tr>
			<td>First Name:</td>
			<td><form:input path="firstName" /></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><form:input path="lastName" /></td>
		</tr>
		<tr>
			<td>Birth Day:</td>
			<td><form:input path="birthDay" /></td>
		</tr>
		<tr>
			<td>Birth Place:</td>
			<td><form:input path="birthPlace" /></td>
		</tr>
		<tr>
			<td>URL Image:</td>
			<td><form:input path="image" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Save" /></td>
		</tr>
	</table>
</form:form>
