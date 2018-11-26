<%@ include file="/WEB-INF/jsps/template/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <!-- Start: PRODUCT LIST -->
        <div class="container">
          <div class="page-header">
            <h2>Edit Product</h2>
            <p>For edit Please fill all fields</p>
          </div>
          <div class="row-fluid">
          <form action="${pageContext.request.contextPath}/admin/productInventory/editProduct" 
                method="post" enctype="multipart/form-data">
            <input type="hidden" name="productId" id="productId" class="form-control" value="${product.productId}"/>
          	<div class="form-group">
          		<label for="name"><b>Name:</b></label>
          		<input type="text" name="productName" id="productName" class="form-control" value="${product.productName}"/>
          	</div>
          	
          	<div class="form-group">
          		<label for="category"><b>Category:</b></label>
          		<label class="checkbox-inline"> 
          		    <input type="radio" name="productCategory" value="watches" id="productCategory" class="form-control"/>Watches</label>
          		<label class="checkbox-inline"> 
          		    <input type="radio" name="productCategory" value="dresses" id="productCategory" class="form-control"/>Dresses</label>
                <label class="checkbox-inline"> 
          		    <input type="radio" name="productCategory" value="shoes" id="productCategory" class="form-control"/>Shoes</label>                                
          	</div>
          	
          	<div class="form-group">
          		<label for="description"><b>Description:</b></label>
          		<textarea name="productDescription" id="productDescription" class="form-control" value="${product.productDescription}"/></textarea>
          	</div>
          	
          	<div class="form-group">
          		<label for="productPrice"><b>Price:</b></label>
          		<input type="text" name="productPrice" id="productPrice" class="form-control"  value="${product.productPrice}"/>
          	</div>
          	
          	<div class="form-group">
          		<label for="condition"><b>Condition:</b></label>
          		<label class="checkbox-inline"> 
          		    <input type="radio" name="productCondition" value="New" id="productCondition" class="form-control"/>New</label>
          		<label class="checkbox-inline"> 
          		    <input type="radio" name="productCondition" value="Used" id="productCondition" class="form-control"/>Used</label>                              
          	</div>
          	
          	<div class="form-group">
          		<label for="status"><b>Status:</b></label>
          		<label class="checkbox-inline"> 
          		    <input type="radio" name="productStatus" value="Active" id="productStatus" class="form-control"/>Active</label>
          		<label class="checkbox-inline"> 
          		    <input type="radio" name="productStatus" value="No-Active" id="productStatus" class="form-control"/>No-Active</label>                              
          	</div>
          	
          	<div class="form-group">
          		<label for="unitInStock"><b>Units in Stock:</b></label>
          		<input type="text" name="unitInStock" id="unitInStock" class="form-control" value="${product.unitInStock}"/>
          	</div>
          	
          	<div class="form-group">
          		<label for="manufacturer"><b>Manufacturer:</b></label>
          		<input type="text" name="productManufacturer" id="productManufacturer" class="form-control" value="${product.productManufacturer}"/>
          	</div>
          	
          	<div class="form-group">
          		<label for="productImage" class="control-label"><b>Image:</b></label>
          		<input type="file" name="productImage" id="productImage" class="form-control" />
          	</div>
          	
          	<br><br>
          	
          	<input type="submit" value="Enviar" class="btn btn-default"/>
          	<a href= "<c:url value="/admin/productInventory"/>" class="btn btn-danger">Cancel</a>
          	
          </form>    
          </div>
          
          </div>
          
        </div>
      <!-- End: PRODUCT LIST -->
    </div>
    <!-- End: MAIN CONTENT -->
    
    <%@ include file="/WEB-INF/jsps/template/footer.jsp" %>   