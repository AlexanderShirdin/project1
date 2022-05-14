package controllers;

import database.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name = "TermsDeleteController", urlPatterns = "/term_deleting")
public class TermsDeleteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idTerm = req.getParameter("idTermToDelete");
        DBManager manager = new DBManager();
        manager.deleteTerm(idTerm);
        resp.sendRedirect("/terms");
    }
}