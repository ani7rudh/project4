<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 
.dropdown-menu > li.kopie > a {
    padding-left:5px;
}
 
.dropdown-submenu {
    position:relative;
}
.dropdown-submenu>.dropdown-menu {
   top:0;left:100%;
   margin-top:-6px;margin-left:-1px;
   -webkit-border-radius:0 6px 6px 6px;-moz-border-radius:0 6px 6px 6px;border-radius:0 6px 6px 6px;
 }
  
.dropdown-submenu > a:after {
  border-color: transparent transparent transparent #333;
  border-style: solid;
  border-width: 5px 0 5px 5px;
  content: " ";
  display: block;
  float: right;  
  height: 0;     
  margin-right: -10px;
  margin-top: 5px;
  width: 0;
}
 
.dropdown-submenu:hover>a:after {
    border-left-color:#555;
 }

.dropdown-menu > li > a:hover, .dropdown-menu > .active > a:hover {
  text-decoration: underline;
}  
  
@media (max-width: 767px) {
  .navbar-nav  {
     display: inline;
  }
  .navbar-default .navbar-brand {
    display: inline;
  }
  .navbar-default .navbar-toggle .icon-bar {
    background-color: #fff;
  }
  .navbar-default .navbar-nav .dropdown-menu > li > a {
    color: red;
    background-color: #ccc;
    border-radius: 4px;
    margin-top: 2px;   
  }
   .navbar-default .navbar-nav .open .dropdown-menu > li > a {
     color: #333;
   }
   .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
   .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
     background-color: #ccc;
   }

   .navbar-nav .open .dropdown-menu {
     border-bottom: 1px solid white; 
     border-radius: 0;
   }
  .dropdown-menu {
      padding-left: 10px;
  }
  .dropdown-menu .dropdown-menu {
      padding-left: 20px;
   }
   .dropdown-menu .dropdown-menu .dropdown-menu {
      padding-left: 30px;
   }
   li.dropdown.open {
    border: 0px solid red;
   }

}
 
@media (min-width: 768px) {
  ul.nav li:hover > ul.dropdown-menu {
    display: block;
  }
  #navbar {
    text-align: center;
  }
}  


.error{color:red;}

</style>

  <title>TechFab</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>

<link href="resources/css/slider.css" rel="stylesheet" type="text/css" media="all"/>

<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

<script type="text/javascript" src="resources/js/jquery-1.7.2.min.js"></script>
 
<script type="text/javascript" src="resources/js/move-top.js"></script>

<script type="text/javascript" src="resources/js/easing.js"></script>

<script type="text/javascript" src="resources/js/startstop-slider.js"></script>

<script src="resources/js/angular.min.js"></script>
        


</head>

<body>
 <div class="wrap">

	<div class="header">
	
	<div class="headertop_desc">
	
		<div class="call">
<p><span>Need help?</span> call us <span class="number">1-22-3456789</span></span></p>

<sec:authorize access="isAuthenticated()">
 <sec:authentication property="principal.Username"/>
 Dear <strong>${userName}</strong>, Welcome to Admin Page.
    <a href="<c:url value="/logout" />">Logout</a>
 </sec:authorize>
 
 
                  
 
			</div>
			
			<div class="account_desc">
				<ul>
					<li><a href="#">Register</a></li>
					<li><a href="#">Login</a></li>
					<li><a href="#">Delivery</a></li>
					<li><a href="#">Checkout</a></li>
					<li><a href="#">My Account</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="header_top">
			<div style="color:red;font-size:40px;font-weight:bold;">
		 TechFab
			</div>
			
			  <div class="cart">
			  	   <p>Welcome to our Online Store! <span>Cart:</span><div id="dd" class="wrapper-dropdown-2"> 0 item(s) - $0.00
			  	   	<ul class="dropdown">
							<li>you have no items in your Shopping cart</li>
					</ul></div></p>
			  </div>
			  <script type="text/javascript">
			function DropDown(el) {
				this.dd = el;
				this.initEvents();
			}
			DropDown.prototype = {
				initEvents : function() {
					var obj = this;

					obj.dd.on('click', function(event){
						$(this).toggleClass('active');
						event.stopPropagation();
					});	
				}
			}

			$(function() {

				var dd = new DropDown( $('#dd') );

				$(document).click(function() {
					// all dropdowns
					$('.wrapper-dropdown-2').removeClass('active');
				});

			});

		</script>
	 <div class="clear"></div>
  </div>

	
	<div id="navbar">
  <nav class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>
    <div class="collapse navbar-collapse" id="navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Active Link</a></li>
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu <b class="caret"></b></a> 
             <c:forEach items="${cList}" var="cList">
          
          <ul class="dropdown-menu">
          <li>${cList.categoryName}</li>
                              <c:forEach items="${cList.subCategory}" var="subCategoryList">
                              <li>${subCategoryList.subCategoryName}</li>
                              </c:forEach>
                                </ul>    
                                </c:forEach>
          
          
          
                    <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown2 <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li class="kopie"><a href="#">Dropdown2</a></li>
            <li><a href="#">Dropdown2 Link 1</a></li>
            <li><a href="#">Dropdown2 Link 2</a></li>
            <li><a href="#">Dropdown2 Link 3</a></li>
            <li class="dropdown dropdown-submenu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown2 Link 4</a>
              <ul class="dropdown-menu">
                <li class="kopie"><a href="#">Dropdown2 Link 4</a></li>
                <li><a href="#">Dropdown2 Submenu Link 4.1</a></li>
                <li><a href="#">Dropdown2 Submenu Link 4.2</a></li>
                <li><a href="#">Dropdown2 Submenu Link 4.3</a></li>
                <li><a href="#">Dropdown2 Submenu Link 4.4</a></li>
              </ul>
            </li>
            <li class="dropdown dropdown-submenu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown2 Link 5</a>
              <ul class="dropdown-menu">
                <li class="kopie"><a href="#">Dropdown Link 5</a></li>
                <li><a href="#">Dropdown2 Submenu Link 5.1</a></li>
                <li><a href="#">Dropdown2 Submenu Link 5.2</a></li>
                <li><a href="#">Dropdown2 Submenu Link 5.3</a></li>
                <li class="dropdown dropdown-submenu">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown Submenu Link 5.4</a>
                  <ul class="dropdown-menu">
                    <li class="kopie"><a href="#">Dropdown2 Submenu Link 5.4</a></li>
                    <li><a href="#">Dropdown2 Submenu Link 5.4.1</a></li>
                    <li><a href="#">Dropdown2 Submenu Link 5.4.2</a></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </nav>
</div>
	