<form action="LoginServlet" method="post">
    Email: <input type="text" name="email"><br>
    Senha: <input type="password" name="senha"><br>
    <button type="submit">Login</button>
    <br>
    <% if (request.getParameter("erro") != null) { %>
        <p style="color:red">Email ou senha inválidos!</p>
    <% } %>
</form>