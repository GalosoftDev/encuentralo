<%@ include file="/WEB-INF/jsps/template/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <!-- Start: PRODUCT LIST -->
        <div class="container">
          <div class="page-header">
            <h2>Admin page</h2>
            <p class="lead">This is the administrator page</p>
          </div>
          <div class="row-fluid">
            <h3>
            	<a href= "<c:url value="/admin/productInventory"/>" >Product Inventory</a>
            </h3>
            <p>Here you can check , modify and delete products</p>
          </div>
          
          </div>
          
        </div>
      <!-- End: PRODUCT LIST -->
    </div>
    <!-- End: MAIN CONTENT -->
    
    <%@ include file="/WEB-INF/jsps/template/footer.jsp" %>   