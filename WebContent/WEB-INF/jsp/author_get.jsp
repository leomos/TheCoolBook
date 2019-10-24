<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:page>
	<t:navbar></t:navbar>
	<html>
<head>
<title>TheCoolBook</title>
</head>
<body>
	<div class="container-fluid">
		<div class="text-center">
			<h4>${author.getFirstName()} ${author.getLastName()} nato il
				${author.getBirthDay()} a ${author.getBirthPlace()}</h4>


		</div>
		<br>
		<div class="text-center">
			<img class="rounded-circle shadow" src='${author.getImage()}'
				style="width: 200px; height: 200px;" /> <br> <br>

		</div>
		<div class="text-center">
			<a href="/thecoolbook/author/${author.getId()}/update.html">
				Update </a> <a href="/thecoolbook/author/${author.getId()}/delete.html">
				Delete </a>
		</div>
	</div>
</body>
	</html>
</t:page>