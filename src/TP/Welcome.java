package TP;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class Welcome extends HttpServlet {
    public void service(HttpServletRequest req,
                        HttpServletResponse res)
            throws IOException, ServletException
    {
        req.setAttribute("MenuNumber", 0);
        req.getRequestDispatcher("/index.jsp").forward(req, res);
    }
}
