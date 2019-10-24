<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<t:page>
	<t:navbar></t:navbar>
	<div class="container">
		<div class="row">
			<div class="col-auto"></div>
			<div class="col">
				<div class="row">
					<div class="col">
						<form action="create.html" method="post">
							<div class="form-group">
								<label for="author-input">Author:</label> <select class="form-control" class="form-control"
										name="author">
										<c:forEach items="${author}" var="author">
									<option>${author.getFirstName()}</option>
									</c:forEach>
								</select>
							</div>

							<div class="form-group">
								<label for="title-input">Title:</label> <input type="text"
									id="title-input" class="form-control" name="title" required />
							</div>
							<div class="form-group">
								<label for="num_pages-input">Number of pages:</label> <input
									type="text" id="num_pages-input" class="form-control"
									name="numPages" required />
							</div>
							<div class="form-group">
								<label for="genre-input">Genre:</label> <input type="text"
									id="genre-input" class="form-control" name="genre" required />
							</div>
							<div class="form-group">
								<label for="isbn-input">Isbn:</label> <input type="text"
									id="isbn-input" class="form-control" name="isbn" required />
							</div>

							<div class="form-group">
								<label for="URLImage-input">URL:</label> <input type="text"
									class="form-control" id="URLImage-input" name="URLImage"
									required />
							</div>

							<input type="submit" class="btn btn-success" value="CREATE"/>
						</form>
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
	</div>
</t:page>