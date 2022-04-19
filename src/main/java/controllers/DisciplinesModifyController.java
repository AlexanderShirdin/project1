package controllers;

import database.DBManager;
import entity.Discipline;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DisciplinesModifyController", urlPatterns = "/discipline_modifying")
public class DisciplinesModifyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("modifyHidden");
        DBManager dbManager = new DBManager();
        Discipline discipline = dbManager.getDisciplineById(id);
        req.setAttribute("discipline", discipline);
        req.getRequestDispatcher("JSP/discipline_modifying.jsp").forward(req, resp);
    }
}
