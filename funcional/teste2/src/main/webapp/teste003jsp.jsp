<%-- 
    Document   : teste003jsp
    Created on : 04/09/2019, 09:27:21
    Author     : aluno
--%>

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
    <% 
    
        
Session sessionRecheio;
        sessionRecheio = HibernateUtil.getSession();
        Transaction tr = sessionRecheio.beginTransaction();
        sessionRecheio.createquery(From usuario where nome=).setString;
        tr.commit();

    %>
        
        
        <h1>Hello World!</h1>
    </body>
</html>
