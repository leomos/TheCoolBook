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
		                    	<label for="email-input">Email:</label>
		                    	<input type="text" class="form-control" id="email-input" value="${user.getEmail()}"/>
		                    </div>
			                <div class="form-group">
			                	<label for="password-input">Password:</label>
			                	<input type="password" id="password-input" class="form-control" value="${user.getPassword()}"/>
			                </div>
			                <div class="form-group">
			                	<label for="firstname-input">First name:</label>
			                	<input type="text" id="firstname-input" class="form-control" value="${user.getFirstName()}"/>
			                </div>
			                <div class="form-group">
			                	<label for="lastname-input">Last name:</label>
			                	<input type="text" id="lastname-input" class="form-control" value="${user.getLastName()}"/>
			                </div>
			                <div class="form-group">
			                	<input type="checkbox" id="admin-input" class="mr-2" checked="${user.getIsAdmin()}"/>
			                	<label for="admin-input">Administrator</label>
			                </div>
		                </form>
		            </div>
		        </div>
		    </div>
		    <div class="col"></div>
		</div>
	</div>
</t:page>