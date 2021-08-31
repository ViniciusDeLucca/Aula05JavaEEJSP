<%-- 
    Document   : sum.jsp
    Created on : 30 de ago. de 2021, 19:28:38
    Author     : vinic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int n=10;
    String error = null;
    if(request.getParameter("n") == null){
        error = "Não foi informado o parâmetro necessário'n'";
    }
    try{
        n = Integer.parseInt(request.getParameter("n"));
    }catch(Exception e){
        error = "O valor informado como parâmetro 'n' ('"+ request.getParameter("n")+"') não é um número inteiro válido";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaEE - JSP</title>
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Tabuada</h3>
        <h4><a href="index.html">Voltar</a></h4>
        <hr/>
        <%if(error != null){%>
        <div style="color: red"><%= error %></div> 
        <%}else{%>
            <table>
                <%for(int i=1; i<=n; i++){%>
                <tr>
                    <td><%= n %></td>
                    <td>x</td>
                    <td><%= i %></td>
                    <td>=</td>
                    <td><%= (n*i) %></td>
                </tr>
                <%}%>
            </table>
            <hr/>
        <%}%>
        
        
        <form action="multiplication-table.jsp">
            <input type="number" step="1" name="n" value="<%= n %>"/>
            <input type="submit" value="Gerar"/>
        </form>
        
    </body>
</html>
