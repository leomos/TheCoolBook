<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<t:page>
	<t:navbar></t:navbar>
	<div class="container">
		<div class="row">
			<div class="col-auto"><img class="rounded-circle shadow" src="/thecoolbook/assets/img/shorse.jpg" style="width: 150px; height: 150px;" /></div>
		    <div class="col">
		        <div class="row">
		            <div class="col">
		                <form:form action="/event/${event.getIdEvent()}/update" method="POST" modelAttribute="event">
		                    <div class="form-group">
		                    	<form:label path="event-name" for="event-name-input">Event Name:</form:label>
		                    	<form:input path="event-name" type="text" class="form-control" id="event-name-input" value="${event.getEventName()}" />
		                    </div>
			                <div class="form-group">
			                	<form:label path="event-location" for="event-location-input">Event Location:</form:label>
			                	<form:input path="event-location" type="text" id="event-location-input" class="form-control" value="${event.getEventLocation()}" />
			                </div>
			                <div class="form-group">
			                	<form:label path="event-date" for="event-date-input">Event Date:</form:label>
			                	<form:input path="event-date" type="date" id="event-date-input" class="form-control" value="${event.getEventDate()}" />
			                </div>
		                </form:form>
		                <br>
		                <div class="submit-button">
		                <button type="submit">Submit Update</button>
		                </div>
		            </div>
		        </div>
		    </div>
		    <div class="col"></div>
		</div>
	</div>
</t:page>

</body>
</html>