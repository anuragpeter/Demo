<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<html>
<body>
<head>
<link href="resources/bootstrap-3.3.6-dist/css/footer.css" rel="stylesheet">
 <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
 
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="header">FastShopping</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <sec:authorize access="hasRole('ROLE_USER')">
    <li><a href="mycart"><span class="glyphicon glyphicon-shopping-cart"></span>MyCart</a></li>
    </sec:authorize>
   <sec:authorize access="isAnonymous()">
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </sec:authorize>
   <sec:authorize access="isAuthenticated()">
        <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
   </sec:authorize>
    </ul>
  </div>
</nav>
 