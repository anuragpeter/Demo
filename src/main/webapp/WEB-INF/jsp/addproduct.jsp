<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="fm" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/resources/bootstrap-3.3.6-dist/css/productadd.css"rel='stylesheet' type='text/css'>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
<link href="/resources/bootstrap-3.3.6-dist/css/product.css" rel="stylesheet">
<link href="/resources/bootstrap-3.3.6-dist/css/buttons.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<script src="http://resources/bootstrap-3.3.6-dist/js/crud.js"></script>

</head>
<body>
 
<fm:form action="${pageContext.request.contextPath}/productadd" commandName="product" class="form-horizontal" method="post" enctype="multipart/form-data">


 
<div class="container">
  
  <div class="row">
    <div class="col-md-6">
    <h1>Add Product</h1>
    </div>
  </div>
  
    
  
<div class="row">
  
  <div class="col-md-6">
    <c:if test="${not empty product.name}">
    <div class="form-group">
   <label for="pid" class="loginFormElement">Id:</label>   
   <fm:input class="form-control" path="pid" disabled="true" readonly="true"/>
   <fm:hidden path="pid"/>
 </div>
 </c:if>
 <div class="form-group">
   <label for="name" class="loginFormElement">name:</label>
   <fm:input class="form-control" path="name" />
 </div>
    
 <div class="form-group">
   <label for="price" class="loginFormElement">Product Price</label>
   <fm:input class="form-control" path="price" />
   
 </div>
   
   
   <div class="form-group">
   <label for="brand" class="loginFormElement">brand</label>
   <fm:input class="form-control" path="brand" />
 </div>
 
 <div class="form-group">
   <label for="categery" class="loginFormElement">categery</label>
   <fm:input class="form-control" path="categery" />
 </div>
 
 <div class="form-group">
   <label for="color" class="loginFormElement">color</label>
   <fm:input class="form-control" path="color" />
 </div>
    
    <div class="form-group">
      <label class="loginformelement" for="description">Product Description</label>
  	  <fm:input path="description" class="form-control input-lg" placeholder="Large" type="text"/>
      </div>
      
      <div class="form-group">
      <label class="loginformelement" for="image">Product Image</label>
  	  <fm:input path="image" class="form-control input-lg" type="file"/>
      </div> 
       <c:if test="${empty product.name}">
      <div>
    <fm:button type="submit" id="loginSubmit" class="btn btn-success loginFormElement">Add Product</fm:button>
    </div>
    </c:if>
     <c:if test="${not empty product.name}">
      <div>
    <fm:button type="submit" id="loginSubmit" class="btn btn-success loginFormElement">Update Product</fm:button>
    </div>
    </c:if>
    
    
    </div>
 </div>
</fm:form>

<div class="container">
	<div class="row">
		

        <div class="col-md-12">


<div class="table-responsive">


<h1>PRODUCTS LIST</h1>  
<table border="0" width="10%" cellpadding="2" class="table table-bordred table-striped">  
<tr><th>Id</th><th>mobileName</th><th>price</th><th>Designation</th><th>brand</th><th>color</th><th>Type</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="prod" items="${productList}">   
   <tr>  
   <td>${prod.pid}</td>  
   <td>${prod.name}</td>  
   <td>${prod.price}</td>  
   <td>${prod.description}</td>  
   <td>${prod.brand}</td>  
   <td>${prod.color}</td>  
   <td>${prod.categery}</td>
   <td><a href="<c:url value='editprod/${prod.pid}'/>">
          <span class="glyphicon glyphicon-pencil"></span><!--  <button class="button">EDIT</button>-->
        </a></td>  
   <td><a href="<c:url value='deleteprod/${prod.pid}'/>">
          <!--<span class="glyphicon glyphicon-trash"></span>-->  <button class="button">DELETE</button></a></td>  
   </tr>  
   </c:forEach>  
   </table>  

</div>
   
   </div>
   </div>
</body>
</html>









