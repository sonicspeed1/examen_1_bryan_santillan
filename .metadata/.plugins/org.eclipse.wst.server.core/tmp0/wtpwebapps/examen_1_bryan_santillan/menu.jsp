<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="True" import="usuario.*"%>
 <link href="estilos.css" rel="stylesheet"/>
<%
String usuario; 
String mensaje="";
 HttpSession sesion = request.getSession(); 
    if (sesion.getAttribute("usuario") == null)   
    { 
    	mensaje="Ponga el usuario";
    	response.sendRedirect("Login.jsp");
    }else{
    	 usuario=(String)sesion.getAttribute("usuario");
    	  int perfil=(Integer)sesion.getAttribute("perfil"); 
    	  %>
    	  <body class="cuerpo">
    	  <div class="cuadro">
    	  <h1 class="titulo">Ayuda Alimentaria</h1>
    	  <h2 class="titulo">Pagina privada</h1>
    	  </div>
    	  <body>
    	  <%
    	  pagina pag=new pagina();
    	  out.print(pag.mostrarpag(perfil));
    	  %>
    	  <%
    }
 %>
     
