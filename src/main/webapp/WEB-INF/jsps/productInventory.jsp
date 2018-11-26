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
          
              <table class="table table-striped table-hover">
              	<tr class="bg-success">
              		<th>Photo thumb</th>
              		<th>Product Name</th>
              		<th>Category</th>
              		<th>Condition</th>
              		<th>Price</th>
              		<th></th>
              	</tr>
            
              <c:forEach items="${products}" var="product">
	              <tr>
	                <td><img src="${pageContext.request.contextPath}/imgs/${product.productId}.png" style="width:80px; height:120px"/></td>
	                <td>${product.productName}</td>
	                <td>${product.productCategory}</td>
	                <td>${product.productCondition}</td>
	                <td>${product.productPrice}</td>
	                <td>
	                   <a href= "<spring:url value="/productList/viewProduct/${product.productId}"/>">
	                   <span class="icon-plus-sign"></span></a>
	                   <a href= "<spring:url value="/admin/productInventory/deleteProduct/${product.productId}"/>">
	                   <span class="icon-remove"></span></a>
	                   <a href= "<spring:url value="/admin/productInventory/editProduct/${product.productId}"/>">
	                   <span class="icon-edit"></span></a>
	                </td>
	              </tr>
			  </c:forEach>
              </table>
              
              <a href="<c:url value="/admin/productInventory/addProduct"/>" class="btn btn-success">AddProduct</a>
              
          </div>
          
          </div>
          
        </div>
      <!-- End: PRODUCT LIST -->
    </div>
    <!-- End: MAIN CONTENT -->
    
    <%@ include file="/WEB-INF/jsps/template/footer.jsp" %>   