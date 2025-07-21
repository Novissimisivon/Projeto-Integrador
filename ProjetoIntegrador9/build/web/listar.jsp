<%@ page import="java.util.List" %>
<%@ page import="modelo.Usuario" %>
<%
    List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
%>
<table border="1">
    <tr><th>ID</th><th>Nome</th><th>Email</th></tr>
    <% for (Usuario u : usuarios) { %>
        <tr>
            <td><%= u.getId() %></td>
            <td><%= u.getNome() %></td>
            <td><%= u.getEmail() %></td>
        </tr>
    <% } %>
</table>