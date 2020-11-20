<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="gallery" value="/assets/image/gallery" />
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title>De volta para o futuro</title>
    <link rel="stylesheet" href="<c:url value='/assets/style/main.css' />" />
    <!-- Favicon -->
    <c:url var="favicon" value="/assets/image/favicon" />
    <link rel="stylesheet" href="<c:url value='/assets/style/main.css' />" />
	<link rel="apple-touch-icon" sizes="180x180" href="${favicon}/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="${favicon}/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="${favicon}/favicon-16x16.png">
	<link rel="icon" href="${favicon}/favicon.ico">
	<link rel="manifest" href="${favicon}/site.webmanifest">
	<link rel="mask-icon" href="${favicon}/safari-pinned-tab.svg" color="#333333">
	<meta name="msapplication-TileColor" content="#333333">
	<meta name="theme-color" content="#333333">
  </head>
  <body>
    <div id="root">
      <main class="content normalize">
        <div class="children">
          <div class="wrapper">
            <div class="container">
              <header class="main-center">
                <h1 class="sr-only">De volta para o futuro: a experi&ecirc;ncia</h1>
                <figure class="logo">
                  <a href="<c:url value='/index.jsp' />">
                    <img
                      src="<c:url value='/assets/image/logo.png' />"
                      alt="Logotipo: de volta para o futuro"
                    />
                  </a>
                </figure>
              </header>

              <div class="chars">
                <section class="card">
                  <figure class="display-container">
                    <img
                      class="image"
                      src="${gallery}/id-character.jpg"
                      alt="Identificador: personagens"
                    />
                    <figcaption class="display-bottom-left">
                      Personagens
                    </figcaption>
                  </figure>
                  <div class="show-on-hover">
                    <div class="card-body">
                      <p>Personagens participantes do longa metragem</p>
                    </div>
                    <div class="card-footer">
                      <a href="<c:url value='/routes/personagens' />" class="btn-link"
                        >Mais detalhes</a
                      >
                    </div>
                  </div>
                </section>
                <section class="card">
                  <figure class="display-container">
                    <img
                      class="image"
                      src="${gallery}/id-timeline.jpg"
                      alt="Identificador: linha temporal"
                    />
                    <figcaption class="display-bottom-left">
                      Linha Temporal
                    </figcaption>
                  </figure>
                  <div class="show-on-hover">
                    <div class="card-body">
                      <p>Eventos em linhas temporais para melhor experiência</p>
                    </div>
                    <div class="card-footer">
                      <a href="<c:url value='/routes/linhatemporal' />" class="btn-link"
                        >Mais detalhes</a
                      >
                    </div>
                  </div>
                </section>
                <section class="card">
                  <figure class="display-container">
                    <img
                      class="image"
                      src="${gallery}/id-about.jpg"
                      alt="Identificador: sobre"
                    />
                    <figcaption class="display-bottom-left">Sobre</figcaption>
                  </figure>
                  <div class="show-on-hover">
                    <div class="card-body">
                      <p>
                        Um pouco sobre os alunos participantes desse projeto
                      </p>
                    </div>
                    <div class="card-footer">
                      <a href="<c:url value='/routes/sobre' />" class="btn-link">Mais detalhes</a>
                    </div>
                  </div>
                </section>
              </div>
            </div>
          </div>
        </div>
        <footer>
          <div class="al-center">
            <p>&copy; 2020. Todos os direitos reservados a Go Code</p>
          </div>
        </footer>
      </main>
    </div>
  </body>
</html>
