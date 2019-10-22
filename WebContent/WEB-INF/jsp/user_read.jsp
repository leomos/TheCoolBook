<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>TheCoolBook</title>
</head>
<body>
<c:forEach items="${users}" var="user">
	${user.getEmail()} <br>
</c:forEach>
</body>
</html>