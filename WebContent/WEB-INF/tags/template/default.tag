<%@ attribute name="title" required="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title>${title} | De volta para o futuro</title>
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
      <header class="topbar">
        <h1 class="sr-only">De volta para o futuro: a experi&ecirc;ncia</h1>
        <figure class="logo">
          <a href="<c:url value='/routes/index' />">
            <img
              src="<c:url value='/assets/image/logo.png' />"
              alt="Logotipo: de volta para o futuro"
            />
          </a>
        </figure>

        <div class="menu expand-lg hide">
          <a class="menu-item" href="<c:url value='/routes/personagens' />">Personagens</a>
          <a class="menu-item" href="<c:url value='/routes/linhatemporal' />">Linha temporal</a>
          <a class="menu-item" href="<c:url value='/routes/sobre' />">Sobre</a>
        </div>

        <button class="btn menu-toggler" data-target=".menu" data-action="show">
          &#x2630;
        </button>
      </header>

      <main class="content">
        <div class="children">
          <div class="wrapper">
          	<div class="chars">
	          	<jsp:doBody />
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

    <script src="<c:url value='/assets/script/main.js' />"></script>
  </body>
</html>
