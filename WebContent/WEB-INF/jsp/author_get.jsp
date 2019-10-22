<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>TheCoolBook</title>
</head>
<body>
	<h3>${author.getFirstName()} ${author.getLastName()} nato il
		${author.getBirthDay()} a ${author.getBirthPlace()}</h3>
</body>
</html>