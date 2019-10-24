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
<meta charset="utf-8">
<title>Events</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
	<nav class="navbar navbar-light navbar-expand-md">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">TheCoolBook</a>
			<button data-toggle="collapse" class="navbar-toggler"
				data-target="#navcol-1">
				<span class="sr-only">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="nav navbar-nav">
					<li class="nav-item" role="presentation"><a class="nav-link "
						href="authors.html">Authors</a></li>
					<li class="nav-item" role="presentation"><a class="nav-link"
						href="books.html">Books</a></li>
					<li class="nav-item active" role="presentation"><a
						class="nav-link" href="events.html">Events</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<h3>The Event</h3>
	</div>
	<div class="container">
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>Name Event</th>
						<th>Author</th>
						<th>Date Event</th>
						<th>Location Event</th>
						<th>Update</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tr>
					<td>${event.getIdEvent()}</td>
					<td>${event.getEventName()}</td>
					<td>${event.getEventDate()}</td>
					<td>${event.getEventLocation()}</td>
					<td><a href="update/${event.getIdEvent()}">Edit</a></td>
					<td><a href="delete/${event.getIdEvent()}">Delete</a></td>
			</table>

		</div>
		<h4>Books</h4>
	</div>
	
	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>