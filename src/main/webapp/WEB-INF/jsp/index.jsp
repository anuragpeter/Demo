


<%@include file="header.jsp" %>

<sec:authorize access="hasAuthority('ROLE_ADMIN')">
<jsp:forward page="/adminHome"/>
</sec:authorize>






<!-- carousel -->

<!DOCTYPE html>
<html lang="en">
<head>
 
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  </style>
</head>
<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/1.jpg" alt="" width="100" height="100">
      </div>

      <div class="item">
        <img src="resources/2.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="resources/3.jpg"alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/4.jpg" alt="Flower" width="460" height="345">
      </div>
     <div class="item">
        <img src="resources/c2.jpg" alt="Flower" width="460" height="345">
      </div>
       <div class="item">
        <img src="resources/c3.jpg" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>




<jsp:include page="crousal.jsp"></jsp:include>











<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> help </h3>
                    <ul>
                        <li> <a href="#"> payments </a> </li>
                        <li> <a href="#"> Save Card </a> </li>
                        <li> <a href="#"> shipping </a> </li>
                        <li> <a href="#"> Cancellation & Returns</a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> FastSopping </h3>
                    <ul>
                        <li> <a href="#"> Contact Us </a> </li>
                        <li> <a href="#"> About Us</a> </li>
                        <li> <a href="#"> Careers </a> </li>
                        <li> <a href="#"> FastSopping Stories </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> MISC </h3>
                    <ul>
                        <li> <a href="#"> Online Shopping</a> </li>
                        <li> <a href="#"> Affiliate Program </a> </li>
                        <li> <a href="#"> Gift Card </a> </li>
                        <li> <a href="#"> FastSopping First Subscription </a> </li>
                    </ul>
                </div>
                
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3> FastSopping</h3>
                    <ul>
                        <li>
                            <div class="input-append newsletter-box text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  bg-gray" type="button"> SUBMIT <i class="fa fa-long-arrow-right"> </i> </button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li> <a href="https://www.facebook.com/"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="https://twitter.com/"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="https://plus.google.com/collections/featured"> <i class="fa fa-google-plus">   </i> </a> </li>
                        <li> <a href="https://in.pinterest.com/"> <i class="fa fa-pinterest">   </i> </a> </li>
                        <li> <a href="https://www.youtube.com/"> <i class="fa fa-youtube">   </i> </a> </li>
                    </ul>
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
    
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © Footer 2017. All right reserved. </p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                    <li><i class="fa fa-cc-visa"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                </ul> 
            </div>
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>






</body>
</html>



