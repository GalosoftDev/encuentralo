<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bootbusiness | Short description about company">
    <meta name="author" content="Your name">
    <title>Bootbusiness | Give unique title of the page here</title>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap responsive -->
    <link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
    <!-- Font awesome - iconic font with IE7 support --> 
    <link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome-ie7.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/myStyle.css" rel="stylesheet">
    <!-- Bootbusiness theme -->
    <link href="${pageContext.request.contextPath}/css/boot-business.css" rel="stylesheet">
    <!-- Bootbusiness fonts -->
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet"> 
  </head>
  <body>
    <!-- Start: HEADER -->
    <header>
      <!-- Start: Navigation wrapper -->
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <a href="/encuentralo" class="brand brand-bootbus titulos">NovaPrime</a>
            <!-- Below button used for responsive navigation -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <!-- Start: Primary navigation -->
            <div class="nav-collapse collapse">        
              <ul class="nav pull-right">
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Productos<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="nav-header">PRODUCTOS</li>
                    <li><a href="/encuentralo/productList">Todos los Productos</a></li> 
                    <li><a href="product.html">Detalle de algun Producto</a></li>            
                  </ul>                  
                </li>
                <li><a href="leadership.html">Nosotros</a></li>
                <li><a href="contact_us.html">Contactanos</a></li>
                <li><a href="<c:url value="showLogin"/>">Login</a></li>
                <li><a href="<c:url value="showReg"/>">Register</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- End: Navigation wrapper -->   
    </header>
    <!-- End: HEADER -->