<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>TheCoolBook</title>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Bibliography</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${authors}" var="author">
				<tr>
					<td><a
						href="http://localhost:8082/thecoolbook/author/${author.getId()}.html">${author.getId()}</a></td>
					<td>${author.getFirstName()}</td>
					<td>${author.getLastName()}</td>
					<td><a
						href="https://it.wikipedia.org/wiki/${author.getFirstName()}_${author.getLastName()}">
							Bibliography </a>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href = "/thecoolbook/author/create"> Add new author </a>
</body>
</html>