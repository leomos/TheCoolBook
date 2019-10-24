<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:page>
	<t:navbar></t:navbar>
	<div class="container">
		<div class="row">
			<div class="col-auto">
				<img class="rounded shadow" src="${book.getURLImage()}"
					style="width: 200px; height: 250px;" />
			</div>

			<div class="col">
				<div class="row">
					<div class="col">

						<div>
							<h3>
								<label for="title-input">Title:</label>
							</h3>
							<p>${book.getTitle()}</p>
						</div>
						<div>
							<h3>
								<label for="numPages-input">Number of Pages:</label>
							</h3>
							<p>${book.getNumPages()}</p>
						</div>
						<div>
							<h3>
								<label for="genre-input">Genre:</label>
							</h3>
							<p>${book.getGenre()}<p>
						</div>
						<div>
							<h3>
								<label for="isbn-input">Isbn:</label>
							</h3>
							<p>${book.getIsbn()}<p>
						</div>
						<div>
							<h3>
								<label>URL:</label>
							</h3>
							<p>${book.getURLImage()}"</p>
						</div>
						<div>
							<button type="button" class="btn btn-info">
								<a href="${book.getId()}/update" style="color: black;">UPDATE</a>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
	</div>
</t:page>