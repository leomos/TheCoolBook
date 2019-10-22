<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:page>
	<t:navbar></t:navbar>
	<div class="container">
		<div class="row">
			<div class="col-auto"><img class="rounded-circle shadow" src="/thecoolbook/assets/img/shorse.jpg" style="width: 150px; height: 150px;" /></div>
		    <div class="col">
		        <div class="row">
		            <div class="col">
		                <form>
		                    <div class="form-group">
		                    	<label for="title-input">Title:</label>
		                    	<input type="text" class="form-control" id="title-input" value="${book.getTitle()}"/>
		                    </div>
			                <div class="form-group">
			                	<label for="num_pages-input">Number of pages:</label>
			                	<input type="text" id="num_pages-input" class="form-control" value="${book.getNumPages()}"/>
			                </div>
			                <div class="form-group">
			                	<label for="genre-input">Genre:</label>
			                	<input type="text" id="genre-input" class="form-control" value="${book.getGenre()}"/>
			                </div>
			                <div class="form-group">
			                	<label for="isbn-input">Isbn:</label>
			                	<input type="text" id="isbn-input" class="form-control" value="${book.getIsbn()}"/>
			                </div>
		                </form>
		            </div>
		        </div>
		    </div>
		    <div class="col"></div>
		</div>
	</div>
</t:page>