<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="usuario.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista</title>
<link href="estilos.css" rel="stylesheet"/>
</head>
<body class="cuerpo">
<div class="cuadro">
<h1 class="titulo">Ayuda Alimentaria</h1>
</div>
<nav>
<ul class="menu">
<li class="item"><a href="informacion_donadores.jsp">Información de Donadores</a></li>
<li class="item"><a href="Lista_donadores.jsp">Lista de Donadores</a></li>
<li class="item"><a href="cambiar_contraseña.jsp">Cambiar Contraseña</a></li>
<li class="item"><a href="cerrar_sesion.jsp">Cerrar Sesión</a></li>
</ul>
</nav>
<div class="item_login">
<%
    usuario us = new usuario();
    out.print(us.Lista());
%>
</div>
<div id="m1">

</div>
</body>
</html>