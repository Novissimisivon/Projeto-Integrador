package servlet;

import dao.UsuarioDAO;
import modelo.Usuario;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        try {
            UsuarioDAO dao = new UsuarioDAO();
            Usuario u = dao.autenticar(email, senha);
            if (u != null) {
                request.getSession().setAttribute("usuario", u);
                response.sendRedirect("listar.jsp");
            } else {
                response.sendRedirect("login.jsp?erro=1");
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}