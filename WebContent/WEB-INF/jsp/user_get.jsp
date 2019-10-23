<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:page>
	<t:navbar></t:navbar>
	<div class="container">
		<h3>${user.getFirstName()} ${user.getLastName()}</h3>
	</div>
</t:page>