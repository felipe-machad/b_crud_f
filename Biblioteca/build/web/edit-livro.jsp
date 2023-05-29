<%@page import="model.Livro" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Livro l = (Livro)request.getAttribute("livr");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
    </head>
    <body>
        <h1>EDITAR</h1>
        <hr>
        <form action="UpdateLivro" method="post">
            <input type="int" name="id" value="<%= l.getIdLivro() %>" readonly>
            <br><br>
            
            <input type="text" name="Titulo" value="<%= l.getTitulo() %>" placeholder="Titulo do livro" required>
            
            <br><br>
            
            <input type="text" name="Autor" value="<%= l.getAutor() %>" placeholder="Autor do Livro" required>
        
            <br><br>
            
            <input type="text" name="Editora" value="<%= l.getEditora() %>" placeholder="Editora do Livro" required>
            
            <br><br>
            
            <input type="number" name="ano_publicacao" value="<%= l.getAno_publicacao() %>" placeholder="ano_publicacao" required maxlength="4">
            
            <br><br>
            
            <input type="number" name="num_paginas" value="<%= l.getNum_paginas() %>" placeholder="num_paginas" required>
            
            <br><br>
            
            <select name="genero" required>
                <option value="<%= l.getGenero() %>"><%= l.getGenero() %></option>
                <option value="Porto Alegre">Porto Alegre</option>
                <option value="Viamão">Viamão</option>
                <option value="Alvorada">Alvorada</option>
                <option value="Gravataí">Gravataí</option>
                <option value="Sapucaia">Sapucaia</option>
                <option value="Guaíba">Guaíba</option>
            </select>
            
            <input type="submit" value="Atualizar">
        </form>
        <br>
        <a href="home.jsp">Página Inicial</a>
    </body>
</html>