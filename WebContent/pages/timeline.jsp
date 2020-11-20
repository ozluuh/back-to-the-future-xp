<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<template:default title="Linha temporal">
	<jsp:body>
		<c:url var="gallery" value="/assets/image/gallery" />
		<section class="card">
	         <img
				src="${gallery}/tm-1955.jpg"
				alt="1955"
				class="image"
			/>
	         <div class="card-body">
	           <h2 class="card-title">1955A</h2>
	           <p>&nbsp;Linha temporal alternativa</p>
	         </div>
	         <div class="card-footer">
	           <a href="<c:url value='/routes/eventos?period=1955' />" class="btn-link">Mais detalhes</a>
	         </div>
	       </section>
	       <section class="card">
	         <img
				src="${gallery}/tm-1985.jpg"
				alt="1985" class="image" />
	         <div class="card-body">
	           <h2 class="card-title">1985</h2>
	         </div>
	         <div class="card-footer">
	           <a href="<c:url value='/routes/eventos?period=1985' />" class="btn-link">Mais detalhes</a>
	         </div>
	       </section>
	       <section class="card">
	         <img
				src="${gallery}/tm-1985A.jpg"
				alt="1985A" class="image" />
	         <div class="card-body">
	           <h2 class="card-title">1985A</h2>
	           <p>&nbsp;Linha temporal alternativa</p>
	         </div>
	         <div class="card-footer">
	           <a href="<c:url value='/routes/eventos?period=1985A' />" class="btn-link">Mais detalhes</a>
	         </div>
	       </section>
	</jsp:body>
</template:default>