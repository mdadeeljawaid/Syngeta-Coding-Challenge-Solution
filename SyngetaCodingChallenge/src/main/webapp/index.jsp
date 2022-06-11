<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
 <title>Home</title>
</head>
<body>

 <div class="container-fluid">
	<section >
   
      <div class="row mx-4 my-4">
        <div class="" >
        <form action="/searchAdress" method="post">
          	<div class="input-group">
          
	            <input type="text" name="find" class="form-control" placeholder="Search ">
	            <div class="input-group-append">
	              <button type="submit" class="btn btn-success">Search</button>
	            </div>
            
          	</div>
          </form>
        </div>
      </div>
      </section>
      
      
       <div class="row">
		  
		  <c:forEach var="item" items="${result}">
		
		    <ul class="list-group">
				  <li class="list-group-item"> ${item} </li>
			</ul>
		
		  </c:forEach>
		  
      </div>
      
      
    </div>
    
    
  
    
    
    
    
    
  
</body>
</html>