<%@ include file="/WEB-INF/jsps/template/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <!-- Start: PRODUCT LIST -->
        <div class="container">
          <div class="page-header">
            <h2>Our products</h2>
          </div>
          <div class="row-fluid">
            <ul class="thumbnails">
              <c:forEach items="${products}" var="product">
	              <li class="span3">
	                <div class="thumbnail">
	                  <img src="img/placeholder-260x150.jpg" alt="product name">
	                  <div class="caption">
	                    <h3>${product.productName}</h3>
	                    <p>
	                      ${product.productDescription}
	                    </p>
	                  </div>
	                  <div class="widget-footer">
	                    <p>
	                      <a href="#" class="btn btn-primary">Buy now</a>&nbsp;
	                      <a href="<spring:url value="/productList/viewProduct/${product.productId}"/>" class="btn">Read more</a>
	                    </p>
	                  </div>
	                </div>
	              </li>
			  </c:forEach>
            </ul>
          </div>
          
          </div>
          <div class="pagination pagination-centered">
                <ul>
                  <li class="disabled">
                    <a href="#">&laquo;</a>
                  </li>
                  <li class="active">
                    <a href="#">1</a>
                  </li>
                  <li>
                    <a href="#">2</a>
                  </li>
                  <li>
                    <a href="#">3</a>
                  </li>
                  <li>
                    <a href="#">4</a>
                  </li>
                  <li>
                    <a href="#">5</a>
                  </li>
                  <li>
                    <a href="#">6</a>
                  </li>
                  <li>
                    <a href="#">&raquo;</a>
                  </li>
                </ul>
          </div>
        </div>
      <!-- End: PRODUCT LIST -->
    </div>
    <!-- End: MAIN CONTENT -->
    
    <%@ include file="/WEB-INF/jsps/template/footer.jsp" %>   