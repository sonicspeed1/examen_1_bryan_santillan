<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="True" import="usuario.*"%>
<%
usuario usuario=new usuario();
String user1=request.getParameter("usuario");
String pass1=request.getParameter("contraseña");
HttpSession sesion=request.getSession(); 
String mensaje="";
if (usuario.validar(user1, pass1))
{
sesion.setAttribute("usuario", usuario.getUsuario()); 
sesion.setAttribute("perfil", usuario.getId_perfil()); 
sesion.setAttribute("id_us", usuario.getId_user()); 
response.sendRedirect("menu.jsp"); 
}
else
{
	mensaje="Datos incorrectos";
	session.setAttribute("mensaje", mensaje);
	response.sendRedirect("Login.jsp");
}
%>