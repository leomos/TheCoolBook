<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<html>
<head>
<meta charset="utf-8">
<title>TheCoolBook</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
	<t:navbar></t:navbar>
	<br>
	<div style="text-align: center">
		<h2>
			Welcome to TheCoolBook<br> <br>
		</h2>
		<h3>
			<a href="welcome.html">Click here to See Welcome Message... </a>(to
			check Spring MVC Controller... @RequestMapping("/welcome"))
		</h3>
		
		<h3>
			<a href="books.html">Click here to See Our Library </a>
		</h3>
		
	</div>

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>