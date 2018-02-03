<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Health Care - Feedback </title>
<link rel="stylesheet" type="text/css" href="css/search.css">

</head>
<body>

      <div class="search">
      <form name="feedback"  method="post" action="feedbackController">
      <textarea name="feedback" rows="5" cols="35" placeholder= "Write your feedback here..."></textarea>
        <br>
        <br>
        <select name="Rating">
    	<option value="Rating">Select Rating</option>
  		<% int i = 1;%>
  		<% while(i<=5){ %>
  		<option value=<%= i %>><%= i %></option>
  		<% i++;} %>
	</select>
	    <input type="submit" name="feedback" class="search search-submit" value="Submit feedback">
      </form>
    </div>
</body>
</html>