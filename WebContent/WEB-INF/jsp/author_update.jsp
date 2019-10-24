<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:page>
	<t:navbar></t:navbar>
	<div class="container">
		<div class="row">
			<div class="col-auto">
				<img class="rounded-circle shadow"
					src='${author.getImage()}'
					style="width: 150px; height: 150px;" />
			</div>
			<div class="col">
				<div class="row">
					<div class="col">
						<form action="update.html" method="post">
							<div class="form-group">
								<label for="id-input">Id:</label> <input type="text"
									class="form-control" name="id" id="id-input"
									value="${author.getId()}" readonly />
							</div>
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
			<div class="col"></div>
		</div>
	</div>
</t:page>