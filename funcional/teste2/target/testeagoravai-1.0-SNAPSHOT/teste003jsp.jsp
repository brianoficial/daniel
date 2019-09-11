<%-- 
    Document   : teste003jsp
    Created on : 04/09/2019, 09:27:21
    Author     : aluno
--%>

<%@page import="com.milu.teste2.Usuario"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.page import="com.milu.teste2"/>
<jsp:directive.page import="HibernateUtil"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Usuario único</h1>
        
    <% 
        String nome ="kkk";
        Usuario usuario = new Usuario();
        Session sessionRecheio;
        sessionRecheio = HibernateUtil.getSession();
        Transaction tr = sessionRecheio.beginTransaction();
        usuario = (Usuario) sessionRecheio.createQuery("From Usuario where nome='kkk'").setString(0,nome).uniqueResult();
        sessionRecheio.close();
        tr.commit();

    %>
        
        
    
    </body>
</html>
