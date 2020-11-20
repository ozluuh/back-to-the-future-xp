<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<template:default title="Personagens">
	<jsp:body>
		<c:forEach var="character" items="${listCharacters}">
			<section class="card">
		      <figure class="display-container">
		        <img
					src="<c:url value='/assets/image/gallery/${character.profileImage}' />"
					alt="Profile: ${character.characterName}" 
				/>
		        <figcaption class="display-bottom-left">
		          ${character.characterName}
		        </figcaption>
		      </figure>
		      <div class="card-body">
		        <ul>
		          <!--<li><strong>Nome: </strong>${character.characterName}</li>-->
		          <li><strong>Ator: </strong>${character.actorName}</li>
		          <li><strong>Idade (personagem): </strong>${character.age}</li>
		          <!--<li><strong>Relevância: </strong>${character.relevance}</li>-->
		        </ul>
		      </div>
		      <div class="card-footer">
		        <a href="<c:url value='/personagem?id=${character.id}' />" class="btn-link">Mais detalhes</a>
		      </div>
		    </section>
		</c:forEach>
	</jsp:body>
</template:default>
