<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>TheCoolBook</title>
</head>
<body>
<h3>${book.getTitle()} ${book.getNum_pages()} ${book.getGenre()} ${book.getIsbn()}}</h3>
<img class="rounded shadow" src="${book.getURLImage()}" style="width: 150px; height: 150px;" />
</body>
</html>