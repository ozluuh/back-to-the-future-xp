<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<template:default title="Eventos">
	<jsp:body>
		<section class="timeline">
	       <h2>${year}</h2>
	       <ul class="timeline-events">
		       <c:forEach var="event" items="${listEvents}">
		         <li>
		           <div class="accordion">
		             <button class="btn btn-link btn-block no-text-shadow">
		               ${event.eventName}
		             </button>
		             <div class="accordion-body">
		               <p>
		                 ${event.eventDescription}
		               </p>
		             </div>
		           </div>
		         </li>
		       </c:forEach>
	       </ul>
	     </section>
	</jsp:body>
</template:default>