package controllers;

import database.DBManager;
import entity.Discipline;
import entity.Student;
import entity.Term;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentsProgressController", urlPatterns = "/student_progress")
public class StudentsProgressController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("progressHidden");
        DBManager manager = new DBManager();

        // 1 - студент по id
        // 2 - все активные семестры
        // 3 - определить первый активны семестр (выбранный по умолчанию)
        // 4 - по выбранному семестру достать все активные дисциплины
        // 5 - оценки, если по выбранному студенту, есть выбранный семестр
        // 6 - определить среднюю оценку

        Student student = manager.getStudentById(id);
        List<Term> terms = manager.getAllActiveTerms();
        Term selectedTerm = terms.get(0);
        List<Discipline> discipline = manager.getDisciplinesByTerm(selectedTerm.getId());
        List<Integer> marks = manager.getMarksByTerm(selectedTerm.getId());


    }
}
