<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- <div class="container-fluid">
	<div class="row">
		<div class="col-1"></div>
			<div class="col-10">
			
			</div>
		<div class="col-1"></div>
	</div>
</div>
 -->

<h1>Add New Book</h1>
<form:form method="post" action="create.html">
	<table>
		<tr>
			<td></td>
			<td><form:hidden path="id" /></td>
		</tr>
		<tr>
			<td>Title:</td>
			<td><form:input path="title" /></td>
		</tr>
		<tr>
			<td>Number of pages:</td>
			<td><form:input path="num_pages" /></td>
		</tr>
		<tr>
			<td>Genre:</td>
			<td><form:input path="isbn" /></td>
		</tr>
		<tr>
			<td>URL:</td>
			<td><form:input path="URLImage" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Save" /></td>
		</tr>
	</table>
</form:form>
