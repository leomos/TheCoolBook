<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:page>
	<t:navbar></t:navbar>
	<div class="container">
		<div class="row">
			<div class="col-auto">
				<img class="rounded shadow" src="${book.getURLImage()}"
					style="width: 200px; height: 250px;" />
			${bookDao.bookGet} ;
			</div>
			<div class="col">
				<div class="row">
					<div class="col">
						<form action="update.html" method="post">
							<div class="form-group">
								<label for="title-input">Title:</label> <input type="text"
									class="form-control" id="title-input" name="title"
									value="${book.getTitle()}" />
							</div>
							<div class="form-group">
								<label for="num_pages-input">Number of pages:</label> <input
									type="text" id="num_pages-input" class="form-control" name="numPages"
									value="${book.getNumPages()}" />
							</div>
							<div class="form-group">
								<label for="genre-input">Genre:</label> <input type="text"
									id="genre-input" class="form-control" name="genre"
									value="${book.getGenre()}" />
							</div>
							<div class="form-group">
								<label for="isbn-input">Isbn:</label> <input type="text"
									id="isbn-input" class="form-control" name="isbn" value="${book.getIsbn()}" />
							</div>							<input type="submit"/> 
						</form>
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
	</div>
</t:page>