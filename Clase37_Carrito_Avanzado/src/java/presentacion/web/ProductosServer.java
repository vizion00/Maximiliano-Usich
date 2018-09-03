package presentacion.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import persistencia.ProductoDao;

@WebServlet(name = "ProductosServer", urlPatterns = {"/ProductosServer"})
public class ProductosServer extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().print(  util.Util.CONVERTIR.toJson( ProductoDao.consultar() ) );
    }

    
}
