<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="usuario.*"%>
<% 
usuario us= new usuario();
String name=request.getParameter("nombre");
String ci=request.getParameter("ci");
String co=request.getParameter("correo");
String user=request.getParameter("us");
String pass=request.getParameter("cont1");
String pass2=request.getParameter("cont2");
String mensaje = ""; 
if (pass.equals(pass2)) {
    if (us.insertar_usuario(name, ci, co, user, pass)) {
        mensaje = "Usuario registrado correctamente.";
    } else {
        mensaje = "Error al registrar el usuario.";
    }
} else {
    mensaje = "Las contraseñas no coinciden.";
}

session.setAttribute("mensaje", mensaje);
response.sendRedirect("registro_donadores.jsp");
%>