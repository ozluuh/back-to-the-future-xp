<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<template:default title="${character.characterName}">
	<jsp:body>
		<section class="char">
	      <header class="char-bio">
	        <figure class="char-image">
	          <img
				src="<c:url value='/assets/image/gallery/${character.profileImage}' />"
				alt="Profile: ${character.characterName}" />
	          <figcaption class="show-on-medium">${character.characterName}</figcaption>
	        </figure>
	        <div class="char-body">
	          <h2>${character.characterName}</h2>
	          <ul class="char-details">
	            <li><strong>Idade: </strong>17</li>
	            <li><strong>Relevância: </strong>
	            <c:choose>
	            	<c:when test="${character.relevance eq 1}">Alta</c:when>
	            	<c:when test="${character.relevance eq 2}">Média</c:when>
	            	<c:otherwise>Baixa</c:otherwise>
	            </c:choose>
	            </li>
	            <li><strong>Papel: </strong>
	            <c:choose>
	            	<c:when test="${character.importance eq 1}">Protagonista</c:when>
	            	<c:when test="${character.importance eq 2}">Secundário</c:when>
	            	<c:otherwise>Figurante</c:otherwise>
	            </c:choose>
	            </li>
	          </ul>
	          <p class="char-description">
	            ${character.characterDescription}
	          </p>
	        </div>
	      </header>
		      <c:if test="${listCharEvents ne null}">
			      <div class="char-event">
			        <h4>Eventos Relacionados</h4>
			        <ul>
			        	<c:forEach var="event" items="${listCharEvents}">
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
			      </div>
		    </c:if>
	    </section>
	</jsp:body>
</template:default>
