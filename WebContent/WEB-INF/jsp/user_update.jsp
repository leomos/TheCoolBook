<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:page>
	<t:navbar></t:navbar>
	<div class="container">
		<div class="row">
			<div class="col-auto"><img class="rounded-circle shadow" src="/thecoolbook/assets/img/shorse.jpg" style="width: 150px; height: 150px;" /></div>
		    <div class="col">
		        <div class="row">
		            <div class="col">
		                <form action="/thecoolbook/user/${user.getId()}/update" method="POST">
		                    <div class="form-group">
		                    	<label for="id-input">Id:</label>
		                    	<input type="text" class="form-control" name="id" id="id-input" value="${user.getId()}" readonly/>
		                    </div>
		                    <div class="form-group">
		                    	<label for="email-input">Email:</label>
		                    	<input type="text" class="form-control" name="email" id="email-input" value="${user.getEmail()}"/>
		                    </div>
			                <div class="form-group">
			                	<label for="password-input">Password:</label>
			                	<input type="password" name="password" id="password-input" class="form-control" value="${user.getPassword()}"/>
			                </div>
			                <div class="form-group">
			                	<label for="firstname-input">First name:</label>
			                	<input type="text" name="firstname" id="firstname-input" class="form-control" value="${user.getFirstName()}"/>
			                </div>
			                <div class="form-group">
			                	<label for="lastname-input">Last name:</label>
			                	<input type="text" name="lastname" id="lastname-input" class="form-control" value="${user.getLastName()}"/>
			                </div>
			                <div class="form-group">
			                	<input type="checkbox" name="admin" id="admin-input" class="mr-2" checked="${user.getIsAdmin()}" value="${user.getIsAdmin()}"	/>
			                	<label for="admin-input">Administrator</label>
			                </div>
			                <button type="submit" class="btn btn-primary">Submit</button>
		                </form>
		            </div>
		        </div>
		    </div>
		    <div class="col"></div>
		</div>
	</div>
</t:page>