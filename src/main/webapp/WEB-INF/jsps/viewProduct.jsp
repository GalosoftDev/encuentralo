<%@ include file="/WEB-INF/jsps/template/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <!-- Start: Main content -->
    <div class="content">    
      <div class="container">
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