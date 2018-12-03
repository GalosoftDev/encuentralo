<%@ include file="/WEB-INF/jsps/template/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

    <!-- Start: Main content -->
    <div class="content">    
      <div class="container" ng-app = "cartApp">
        <!-- Start: Product description -->
        <airticle class="article">
          <div class="row bottom-space">
            <div class="span12">
              <div class="page-header">
                <h1>${product.productName} <small>${product.productDescription}</small></h1>
              </div>
            </div>
            <div class="span12 center-align">
               <img src="${pageContext.request.contextPath}/imgs/${product.productId}.png"/>     
            </div>
            
            <div>
            	<c:set var="role" scope="page" value="${param.role}"/>
			    <c:set var="url" scope="page" value="/productList"/>
			    <c:if test="${role=='admin'}">
					<c:set var="url" scope="page" value="/admin/productInventory"/>
				</c:if>
						
				<p ng-controller="cartCtrl">
				   <a href="#" ng-click="testCart()" class="btn btn-warning">Test Angular</a>
				   <a href="<c:url value="${url}"/>" class="btn btn-primary">Back</a>
				   <a href="#" ng-click="addToCart('${product.productId}')" class="btn btn-success">Order Now</a>
				   <a href= "<spring:url value="/cart" />" class="btn btn-default">View Cart</a>
                </p> 
            </div>
            
          </div>
          <div class="row">
            <div class="span10 offset1">
              <p>
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
              </p>
              <p>
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
              </p>
              <p>
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
              </p>        
              <div class="span8 offset1">
                <h3>Full Detail</h3>
                <ul class="features">
                  <li>
                    <i class="icon-ok "></i><b>Detail:</b> ${product.productDescription}
                  </li>
                  <li>
                    <i class="icon-ok "></i><b>Condition:</b> ${product.productCondition}
                  </li>
                  <li>
                    <i class="icon-ok "></i><b>Manufacturer:</b> ${product.productManufacturer}
                  </li>
                  <li>
                    <i class="icon-ok "></i><b>Product Price:</b> ${product.productPrice}
                  </li>
                  <li>
                    <i class="icon-ok "></i><b>Units:</b> ${product.unitInStock}
                  </li>
            
                </ul>
              </div>                                              
            </div>      
          </div>
          <div class="row">
            <div class="span10 offset1">
              <hr>
              <div class="span3">
                <p>
                  Ready to start the innovation?
                </p>
                <a class="btn btn-large btn-block" href="#">Buy now</a>
              </div>
              <div class="span3">
                <p>
                  Got confused?
                </p>
                <a class="btn btn-large btn-block" href="contact_us.html">Contact us</a>
              </div>
              <div class="span3">
                <p>
                  Check frequently asked question
                </p>
                <a class="btn btn-large btn-block" href="faq.html">FAQ</a>
              </div>              
            </div>
          </div>
        </airticle>
        <!-- End: Product description -->
      </div>
    </div>
    </div>
    <!-- End: Main content -->
     <%@ include file="/WEB-INF/jsps/template/footer.jsp" %> 