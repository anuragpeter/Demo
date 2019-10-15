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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<fm:form action="categoryadd"  class="form-horizontal" modelAttribute="category" method="post" enctype="multipart/form-data">
 
<div class="container">
  
  <div class="row">
    <div class="col-md-6">
    <h1>Add Category</h1>
    </div>
  </div>
  
    
  
<div class="row">
  
  <div class="col-md-6">
     <c:if test="${not empty product.name}">
    <div class="form-group">
     <label for="pid" class="loginFormElement">Id:</label>  
   <fm:input class="form-control" path="cid" disabled="true" readonly="true"/>
   <fm:hidden path="cid"/>
 </div>
 </c:if>
 <div class="form-group">
   <label for="name" class="loginFormElement">name:</label>
   <fm:input class="form-control" path="Name" />
 </div>
 
    
   
    <fm:button type="submit" id="loginSubmit" class="btn btn-success loginFormElement">Add Category</fm:button>
    </div>
    
      <div>
    <fm:button type="submit" id="loginSubmit" class="btn btn-success loginFormElement">Update Category</fm:button>
    </div>
    
    
    
    </div>
 
</fm:form>



<div class="container">
	<div class="row">
		

        <div class="col-md-12">


<div class="table-responsive">


<h1>CATEGORY LIST</h1>  
<table border="0" width="10%" cellpadding="2" class="table table-bordred table-striped">  
<tr><th>Id</th><th>Name</th></tr>  
   <c:forEach var="crod" items="${categoryList}">   
   <tr>  
   <td>${crod.cid}</td>  
   <td>${crod.Name}</td>  
   <td><a href="<c:url value='editprod/${crod.cid}'/>">
          <span class="glyphicon glyphicon-pencil"></span><button class="button">EDIT</button>
        </a></td>  
   <td><a href="<c:url value='deleteprod/${crod.cid}'/>">
          <span class="glyphicon glyphicon-trash"></span><button class="button">DELETE</button></a></td>  
   </tr>  
   </c:forEach>  
   </table>  

</div>



</body>
</html>