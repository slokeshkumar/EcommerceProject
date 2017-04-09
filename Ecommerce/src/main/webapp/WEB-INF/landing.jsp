<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file = "header.jsp"  %>

<!DOCTYPE html>
<html>
<body>

<div class="container">
<div class="row">
<div>
<center><h3>Today's Deal</h3>
<p>Todays deals that are the best offer you can get.</p></center>

<div id="DealsPdtCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<c:if test="${!empty productsDealsList}">
<c:forEach items="${productsDealsList}" var="productDeal" varStatus="i">
<c:if test = "${ i.index == '0' }">
  <li  data-target="#DealsPdtCarousel" data-slide-to="${i.index}" class = "active" ></li>
</c:if>
<c:if test = "${ i.index != '0' }">
  <li data-target="#DealsPdtCarousel" data-slide-to="${i.index}" ></li>
</c:if>
</c:forEach>
</c:if>
</ol>


<div class="carousel-inner" role="listbox">
<c:if test="${!empty productsDealsList}">
<c:forEach items="${productsDealsList}" var="productDeal" varStatus="i">

<c:if test="${i.index == '0'}">
<div class="item active"><center>
  <a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
  <h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><strike>&#8377;<c:out value="${productDeal.mrp}" /></strike><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
</center></div>
</c:if>
<c:if test="${i.index != '0'}">
<div class="item"><center>
<a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
<h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><strike>&#8377;<c:out value="${productDeal.mrp}" /></strike><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
<div >
</div>
</center></div>

</c:if>
</c:forEach>
</c:if>
</div>
</div>
</div>
</div>
     
<div class="col-sm-4">
<h3>Featured Deals</h3> 
<p>Featured deals that have been used by customers.</p>
<div id="FeaturePdtCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
 <c:if test="${!empty productsFeatureList}">
  <c:forEach items="${productsFeatureList}" var="productDeal" varStatus="i">
  <c:if test = "${ i.index == '0' }">
  <li  data-target="#FeaturePdtCarousel" data-slide-to="${i.index}" class = "active" ></li>
</c:if>


<c:if test = "${ i.index != '0' }">
  <li data-target="#FeaturePdtCarousel" data-slide-to="${i.index}" ></li>
</c:if>
</c:forEach>
</c:if>
</ol>


<div class="carousel-inner" role="listbox">
<c:if test="${!empty productsFeatureList}">
<c:forEach items="${productsFeatureList}" var="productDeal" varStatus="i">

<c:if test="${i.index == '0'}">
<div class="item active">
<a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
<h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><strike>&#8377;<c:out value="${productDeal.mrp}" /></strike><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
</div>
</c:if>
<c:if test="${i.index != '0'}">
<div class="item">
<a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
<h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><del>&#8377;<c:out value="${productDeal.mrp}" /></del><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
<div >
</div>
</div>
</c:if>
</c:forEach>
</c:if>
</div>
</div>
</div>


<div class="col-sm-4">
<h3>Special Offers</h3>
<p>Ultimate offers on branded products</p>
<div id="1PdtCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<c:if test="${!empty productsDealsList}">
<c:forEach items="${productsDealsList}" var="productDeal" varStatus="i">
<c:if test = "${ i.index == '0' }">
  <li  data-target="#1PdtCarousel" data-slide-to="${i.index}" class = "active" ></li>
</c:if>
<c:if test = "${ i.index != '0' }">
  <li data-target="#1PdtCarousel" data-slide-to="${i.index}" ></li>
</c:if>
</c:forEach>
</c:if>
</ol>


<div class="carousel-inner" role="listbox">
<c:if test="${!empty productsDealsList}">
<c:forEach items="${productsDealsList}" var="productDeal" varStatus="i">

<c:if test="${i.index == '0'}">
<div class="item active">
  <a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
  <h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><strike>&#8377;<c:out value="${productDeal.mrp}" /></strike><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
<div >
</div>
</div>
</c:if>
<c:if test="${i.index != '0'}">
<div class="item">
<a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
<h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><strike>&#8377;<c:out value="${productDeal.mrp}" /></strike><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
<div >
</div>
</div>

</c:if>
</c:forEach>
</c:if>
</div>
</div>
</div>


<div class="col-sm-4">
<h3>Big Billion Day</h3>
<p>Exciting offers on products</p>
<div id="2PdtCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<c:if test="${!empty productsDealsList}">
<c:forEach items="${productsDealsList}" var="productDeal" varStatus="i">
<c:if test = "${ i.index == '0' }">
  <li  data-target="#2PdtCarousel" data-slide-to="${i.index}" class = "active" ></li>
</c:if>
<c:if test = "${ i.index != '0' }">
  <li data-target="#2PdtCarousel" data-slide-to="${i.index}" ></li>
</c:if>
</c:forEach>
</c:if>
</ol>


<div class="carousel-inner" role="listbox">
<c:if test="${!empty productsDealsList}">
<c:forEach items="${productsDealsList}" var="productDeal" varStatus="i">

<c:if test="${i.index == '0'}">
<div class="item active">
  <a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
  <h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><strike>&#8377;<c:out value="${productDeal.mrp}" /></strike><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
<div >
</div>
</div>
</c:if>
<c:if test="${i.index != '0'}">
<div class="item">
<a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
<h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><strike>&#8377;<c:out value="${productDeal.mrp}" /></strike><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
<div >
</div>
</div>

</c:if>
</c:forEach>
</c:if>
</div>
</div>
</div>

</div>

<br>
<br><br><br><br>      
</body>
</html>
<%@include file = "footer.jsp"  %>