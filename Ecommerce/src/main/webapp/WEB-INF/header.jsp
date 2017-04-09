<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html ng-app='myApp'>
<head>
<title>Welcome</title>
   
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<link  rel="stylesheet" type = "text/css" href="/Ecommerce/bootstrap/css/bootstrap.min.css" >
<script type="text/javascript" src="/Ecommerce/bootstrap/js/jquery-3.1.0.js"></script>
<script type="text/javascript" src="/Ecommerce/bootstrap/js/bootstrap.min.js"></script>
<script src="/Ecommerce/angularjs/angular.min.js"></script>  
<script>
var myApp = angular.module('myApp', []);
myApp.controller('MyController',function($scope, $http) {
        console.log("In angular Js.");
        $scope.getDataFromServer = function() {
                $http({
                        method : 'GET',
                        url : '/Ecommerce/all_search_pdts'
                }).success(function(data, status, headers, config) {
                        $scope.products = data;
                        if($scope.searchText=="")$scope.products="";
                }).error(function(data, status, headers, config) {
                        // called asynchronously if an error occurs
                        // or server returns response with an error status.
                });

        };
});
</script>

<style>   
#carouselButtons {
margin-left: 100px;
position: absolute;
bottom: 0px;
}
.carousel-caption {
position: relative;
left: auto;
right: auto;
color: black;
}

.white_text
{
    color: white;
}
.classic_button_next
{ 
    position: absolute; 
    right: 700px; 
    top: 250px; 
    text-align: center;
}

.classic_button_prev 
{ 
    position: absolute;
    right: 500px;
    top: 250px;
    text-align: center;
}

.img {
    display: block;
    margin: auto;
    width: 100%;
}
   

.form
{ 
    position: absolute; 
    right: 500px; 
    top: 350px; 
}


.button_large{
    
    background-color: #000080; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    height:60px;
    width:100px;
}

.error{
    position: absolute; 
    right: 560px; 
    top: 600px; 
  
}
.jumbotron {
position: relative;
background-image: url("images/f.jpg");
margin-bottom:0;
width: 100%;
height: 200%;
color:white;
}


</style>     
</head>


<body>

<nav class = "navbar navbar-inverse " role = "navigation">
<div class="jumbotron text-center">
<header class="w3-container w3-center w3-padding-48 w3-white">
    <h1 class="w3-xxxlarge"><b>SHOP KART</b></h1>
    <h3>Ready to experience the new <span class="w3-tag">era of Shopping?</span></h3>
  </header>
<p style="text-align:left;">Welcome Dear ${currentUser}!
</p> 
<p color = "blue">${msg}</p>
</div>

<div class = "navbar-header">
<button type = "button" class = "navbar-toggle" data-toggle = "collapse" data-target = "#example-navbar-collapse">
<span class = "sr-only">Toggle navigation</span>
<span class = "icon-bar"></span>
</button>
<a class = "navbar-brand" href = "/Ecommerce/all_landing">Home</a>
</div>

<div class = "collapse navbar-collapse" id = "example-navbar-collapse">


<ul class = "nav navbar-nav">
      	
<c:if test="${!empty category1}">
<li class = "dropdown">
<a href = "#" class = "dropdown-toggle" data-toggle = "dropdown"> <c:out value="${category1Name}" /> <b class = "caret"></b>   </a>
<ul class = "dropdown-menu">
<c:forEach items="${category1}" var="categoryOne">
<li><a href = "/Ecommerce/all_show_sub_category?id=${categoryOne.id}"><c:out value="${categoryOne.subcategory}" /></a></li>
</c:forEach>
</ul>
</li>
</c:if>

 	
<c:if test="${!empty category2}">
<li class = "dropdown">
<a href = "#" class = "dropdown-toggle" data-toggle = "dropdown"> <c:out value="${category2Name}" /> <b class = "caret"></b></a>
<ul class = "dropdown-menu">
<c:forEach items="${category2}" var="categoryTwo">
<li><a href = "/Ecommerce/all_show_sub_category?id=${categoryTwo.id}"><c:out value="${categoryTwo.subcategory}" /></a></li>
</c:forEach>
</ul>
</li>
</c:if>
		
      	
<c:if test="${!empty category3}">
<li class = "dropdown">
<a href = "#" class = "dropdown-toggle" data-toggle = "dropdown"> <c:out value="${category3Name}" /> <b class = "caret"></b>   </a>
<ul class = "dropdown-menu">
<c:forEach items="${category3}" var="categoryThree">
<li><a href = "/Ecommerce/all_show_sub_category?id=${categoryThree.id}"><c:out value="${categoryThree.subcategory}" /></a></li>
</c:forEach>
</ul>
</li>
</c:if>
			

<c:if test="${!empty othercategory}">
<li class = "dropdown">
<a href = "#" class = "dropdown-toggle" data-toggle = "dropdown"> OTHER CATEGORIES <b class = "caret"></b>   </a>
<ul class = "dropdown-menu">
<c:forEach items="${othercategory}" var="categoryOther">
<li>  <c:out value="${categoryOther.key}" /></li>
<c:forEach items="${categoryOther.value}" var="category_sub">
<li><a href = "/Ecommerce/all_show_sub_category?id=${category_sub.id}"><c:out value="${category_sub.subcategory}" /></a></li>
</c:forEach>
</c:forEach>
</ul>
</li>
</c:if>
</ul>
<ul>
    <c:if test="${currentUser == 'Guest'}">
    <a class = "navbar-brand pull-right" href = "/Ecommerce/all_login">Login</a>
    <a class = "navbar-brand pull-right" href = "/Ecommerce/all_signup">Signup</a>
    </c:if>
    <c:if test="${currentUser != 'Guest'}">
<a class = "navbar-brand pull-right" href = "/Ecommerce/j_spring_security_logout">Logout</a>
   </c:if>
   <c:if test="${isAdmin == true}">
<a class = "navbar-brand pull-right" href = "/Ecommerce/admin_add_supplier">Admin</a>
   </c:if>
</ul>

<ul>
    <div ng-app="myApp">
        <div ng-controller="MyController" >
        <table id="searchTextResults" class = "dropdown pull-right">
        <tr><td>
          <button ng-click="getDataFromServer()" class = "dropdown pull-right"> <span class="glyphicon glyphicon-search"></span></button>
           <label class = "dropdown pull-right">Search: <input ng-model="searchText"></label>
         </td> 
         </tr> 
           <tr ng-repeat="product in products | filter:{$: searchText}">
           <td ><a class = "dropdown-toggle" href="/Ecommerce/all_show_product?id={{product.id}}"><p style="color:gray;">{{product.name}}</p></a></td>
           </tr>
           </table>
         </div>
    </div>
</ul>

</div>
</nav>
</body>
</html>