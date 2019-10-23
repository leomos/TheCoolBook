<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>TheCoolBook</title>
</head>
<body>
<h3>${book.getTitle()} ${book.getNumPages()} ${book.getGenre()} ${book.getIsbn()} ${book.getURLImage()}}</h3>
<img class="rounded shadow" src="${book.getURLImage()}" style="width: 150px; height: 150px;" />
</body>
</html>