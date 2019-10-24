<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:page>
	<t:navbar></t:navbar>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<h1>Add New Author</h1>
	<div class="container">
				<div class="row">
					<div class="col">
						<form action="save.html" method="post">
							<div class="form-group">
								<label for="firstname-input">First name:</label> <input
									type="text" name="firstName" id="firstname-input"
									class="form-control" value="${author.getFirstName()}" />
							</div>
							<div class="form-group">
								<label for="lastname-input">Last name:</label> <input
									type="text" name="lastName" id="lastname-input"
									class="form-control" value="${author.getLastName()}" />
							</div>
							<div class="form-group">
								<label for="birthdate-input">Birth date:</label> <input
									type="date" class="form-control" name="birthDay"
									id="birthdate-input" value="${author.getBirthDay()}" />
							</div>
							<div class="form-group">
								<label for="birthplace-input">Birth place:</label> <input
									type="text" name="birthPlace" id="birthplace-input"
									class="form-control" value="${author.getBirthPlace()}" />
							</div>
							<input type="submit" value="Send"/>
						</form>
					</div>
				</div>
			</div>


</t:page>