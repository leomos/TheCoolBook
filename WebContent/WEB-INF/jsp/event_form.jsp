<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Add New Event</h1>  
       <form:form method="post" action="save">    
        <table >  
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td>  
         </tr>     
         <tr>    
          <td>Name : </td>   
          <td><form:input path="eventName"  /></td>  
         </tr>    
         <tr>    
          <td>Location :</td>    
          <td><form:input path="eventLocation" /></td>  
         </tr>   
         <tr>    
          <td>Date :</td>    
          <td><form:input path="eventDate" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>    