<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>TheCoolBook</title>
</head>
<body>
<c:forEach items="${events}" var="event">
	${event.getEventName()} <br>
	${event.getEventLocation()} <br>
	${event.getEventDate()} <br>
</c:forEach>
</body>
</html>