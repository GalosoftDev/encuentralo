<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ include file="/WEB-INF/jsps/template/header.jsp" %>

        
        <div class="container">
        
        	<div class="page-header">
        		<h2>Users</h2>
        		<p>Please fill all fields</p>
        	</div>
        	
        	<div class="container-warpper">
	        	<form action="${pageContext.request.contextPath}/registerUser" method="post">
	        		<div class="form-group">
						<label for="first_name">First Name</label>
						<input type="text" name="first_name" id="first_name" class="form-control"/>
					</div>
					<div class="form-group">
						<label for="last_name">Last Name</label>
						<input type="text" name="last_name" id="last_name" class="form-control"/>
					</div>
					<div class="form-group">
						<label for="name">Email</label>
						<input type="text" name="email" id="email" class="form-control"/>
					</div>
					<div class="form-group">
						<label for="name">Password</label>
						<input type="text" name="password" id="password" class="form-control"/>
					</div>
					
					<input type="submit" value="submit" class="btn btn-primary" />
	        	
	        	</form>
	        </div>
		</div>
<%@ include file="/WEB-INF/jsps/template/footer.jsp" %>    