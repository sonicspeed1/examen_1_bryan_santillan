<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="usuario.*"%>
<%
    String mensaje = null;
    usuario us = new usuario();
    String cont1 = request.getParameter("cont1");
    String cont2 = request.getParameter("cont2");
    HttpSession sesion = request.getSession(); 
    Integer id_us = (Integer) sesion.getAttribute("id_us");
    
    if (id_us != null) {
        if (cont1 != null && cont2 != null) {
            if (cont1.equals(cont2)) {
                if (us.cambio_contraseña(id_us, cont1)) {
                    mensaje = "Contraseña ingresada correctamente";
                } else {
                    mensaje = "Error al cambiar la contraseña. Intente de nuevo.";
                }
            } else {
                mensaje = "Las contraseñas no coinciden. Por favor, intente de nuevo.";
            }
        } else {
            mensaje = "Por favor, complete ambos campos de contraseña.";
        }
    } else {
        mensaje = "Usuario no autenticado. Inicie sesión nuevamente.";
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="estilos.css" rel="stylesheet"/>
</head>
<body class="cuerpo">
<div class="cuadro">
<h1 class="titulo">Ayuda Alimentaria</h1>
</div>
<div class="container">
    <div class="cuadro2">
 <h2 class="titulo2">Cambiar Contraseña</h2><hr> 
 <form action="cambiar_contraseña.jsp" method="post"> 
 <label class="item_login"><p class="titulo2">Contraseña Nueva:</p> <input type="password" name="cont1"></label>
  <label class="item_login"><p class="titulo2">Verificar Contraseña:</p> <input type="password" name="cont2"></label>
 <div class="item_login">
 </div><hr> 
 <div class="item_login">
  <input value="Ingresar" name="Validar" type="submit" class="button">  
 <input value="Cancelar" name="cancelar" type="reset" class="button">
 </div>
   <% if (mensaje != null && !mensaje.isEmpty()) { %>
        <p><%= mensaje %></p>
    <% } %>
 </form>
    </div>
</div>
</body>
</html>