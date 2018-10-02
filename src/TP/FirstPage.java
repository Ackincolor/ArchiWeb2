package TP;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;

public class FirstPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("bonjour");
        //super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
    @Override
    public void service(HttpServletRequest req,
                        HttpServletResponse res)
            throws IOException,ServletException
    {
        // Must set the content type first
        res.setContentType("text/html");
        // Now obtain a PrintWriter to insert HTML into
        PrintWriter out = res.getWriter();

        out.println("<html><head><title>" +
                "Hello World!</title></head>");
        HttpSession session = req.getSession();
        out.println("<body><h1>Hello World!</h1>");
        out.println("session :"+session.getId());
        Integer nbvisite = (Integer)session.getAttribute("nbvisite");
        out.println("nombre de visite :"+nbvisite);
        if(nbvisite==null)
            nbvisite=0;
        nbvisite+=1;
        session.setAttribute("nbvisite",nbvisite);
        out.println("</body></html>");
        req.setAttribute("nbVisite", nbvisite);
        req.setAttribute("MenuNumber", 1);
        req.getRequestDispatcher("/View/FirstPage.jsp").forward(req, res);
    }
}
