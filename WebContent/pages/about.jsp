<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<template:default title="Sobre">
	<jsp:body>
		<c:url var="gallery" value="/assets/image/gallery" />
  		<section class="card">
          <img src="${gallery}/gh-helloisa22.jpg"
				alt="Profile: Helo&iacute;sa Beatriz" class="image" />
          <div class="card-body">
            <ul>
              <li><strong>Name: </strong>Helo&iacute;sa Beatriz</li>
              <li><strong>Occupation: </strong>Database Admin</li>
            </ul>
          </div>
          <div class="card-footer">
            <a href="https://github.com/Heloisa22" class="btn-link"
					target="_blank" rel="noopener noreferrer">Github</a>
            <a href="https://www.linkedin.com/in/heloisa-beatriz-515139197/"
					class="btn-link" target="_blank" rel="noopener noreferrer">LinkedIn</a>
          </div>
        </section>
        
        <section class="card">
          <img src="${gallery}/gh-higorguii.jpg"
				alt="Profile: Higor Guilherme" class="image" />
          <div class="card-body">
            <ul>
              <li><strong>Name: </strong>Higor Guilherme</li>
              <li><strong>Occupation: </strong>Backend Developer</li>
            </ul>
          </div>
          <div class="card-footer">
            <a href="https://github.com/higorguii" class="btn-link"
					target="_blank" rel="noopener noreferrer">Github</a>
          </div>
        </section>
        <section class="card">
          <img src="${gallery}/gh-jacomaga.jpg"
				alt="Profile: Jac&oacute; Magalh&atilde;es" class="image" />
          <div class="card-body">
            <ul>
              <li><strong>Name: </strong>Jac&oacute; Magalh&atilde;es</li>
              <li><strong>Occupation: </strong>Product Owner</li>
            </ul>
          </div>
          <div class="card-footer">
            <a href="https://github.com/jacomaga" class="btn-link"
					target="_blank" rel="noopener noreferrer">Github</a>
            <a href="https://www.linkedin.com/in/jacomaga/"
					class="btn-link" target="_blank" rel="noopener noreferrer">LinkedIn</a>
          </div>
        </section>
        <section class="card">
          <img src="${gallery}/gh-camposl.jpg"
				alt="Profile: Lucas Campos" class="image" />
          <div class="card-body">
            <ul>
              <li><strong>Name: </strong>Lucas Campos</li>
              <li>
                <strong>Occupation: </strong>Intelligence Artificial
              </li>
            </ul>
          </div>
          <div class="card-footer">
            <a href="https://github.com/camposl" class="btn-link"
					target="_blank" rel="noopener noreferrer">Github</a>
            <a href="https://www.linkedin.com/in/lucas-campos-33288610b/"
					class="btn-link" target="_blank" rel="noopener noreferrer">LinkedIn</a>
          </div>
        </section>
        <section class="card">
          <img src="${gallery}/gh-ozluuh.jpg"
				alt="Profile: Lu&iacute;s Paulino" class="image" />
          <div class="card-body">
            <ul>
              <li><strong>Name: </strong>Lu&iacute;s Paulino</li>
              <li><strong>Occupation: </strong>Backend Developer</li>
            </ul>
          </div>
          <div class="card-footer">
            <a href="https://github.com/ozluuh" class="btn-link"
					target="_blank" rel="noopener noreferrer">Github</a>
            <a href="https://www.linkedin.com/in/ozluuh/"
					class="btn-link" target="_blank" rel="noopener noreferrer">LinkedIn</a>
          </div>
        </section>
        <section class="card">
          <img src="${gallery}/gh-stefanymarques.jpg"
				alt="Profile: Stefany Marques" class="image" />
          <div class="card-body">
            <ul>
              <li><strong>Name: </strong>Stefany Marques</li>
              <li><strong>Occupation: </strong>Frontend Developer</li>
            </ul>
          </div>
          <div class="card-footer">
            <a href="https://github.com/StefanyMarques" class="btn-link"
					target="_blank" rel="noopener noreferrer">Github</a>
			<a href="https://www.linkedin.com/in/stefany-gabriela-cipriano-marques-524b30177/"
					class="btn-link" target="_blank" rel="noopener noreferrer">LinkedIn</a>
          </div>
        </section>
	</jsp:body>
</template:default>