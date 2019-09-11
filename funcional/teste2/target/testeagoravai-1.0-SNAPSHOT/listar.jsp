<%@page import="org.hibernate.Transaction"%>
<%@page import="util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
-<%-- 
    Document   : listar
    Created on : 11/09/2019, 09:03:24
    Author     : aluno
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<jsp:directive.page import="com.milu.teste2.Usuario"/>
<jsp:directive.page import="HibernateUtil"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de usuarios</title>
    </head>
    <body>
    
        <h1>Lista de Usuarios</h1>
        
        
        <%
            Session sessionRecheio;
            sessionRecheio = HibernateUtil.getSession();
            Transaction tr = sessionRecheio.beginTransaction();
            List<Usuario> lista = (List)sessionRecheio.createQuery("from Usuario u").list();
            tr.commit();
            
       
            request.setAttribute("usuario", lista);
                  
%>
             <display:table name="usuario">
              
                 <display:column property="nome" title="nome completo"/>
                 <%--  <display:column property="id" title="ID"/> --%>   
                 <%--  <display:column property="senha" title="senha"/>  --%>
             </display:table> 
    </body>
</html>
