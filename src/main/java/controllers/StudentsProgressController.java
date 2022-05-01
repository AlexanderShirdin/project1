package controllers;

import database.DBManager;
import entity.Discipline;
import entity.Student;
import entity.Term;
import services.MarksService;
import services.TermService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "StudentsProgressController", urlPatterns = "/student_progress")
public class StudentsProgressController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("progressHidden");
        String idSelectedTerm = req.getParameter("idSelectedTerm");
        DBManager manager = new DBManager();

        // 1 - студент по id
        // 2 - все активные семестры
        // 3 - определить первый активны семестр (выбранный по умолчанию)

        // 4 - по выбранному семестру достать все активные дисциплины

        // 5 - оценки, если по выбранному студенту, есть выбранный семестр
        // 6 - определить среднюю оценку

        Student student = manager.getStudentById(id);
        List<Term> terms = manager.getAllActiveTerms();
        req.setAttribute("terms", terms);

        Term selectedTerm = null;
        if (idSelectedTerm == null) {
            selectedTerm = terms.get(0);
            req.setAttribute("selectedTerm", selectedTerm);
        } else {
            selectedTerm = TermService.getTermById(terms, idSelectedTerm);
            req.setAttribute("selectedTerm", selectedTerm);
        }

//        List<Discipline> discipline = manager.getDisciplinesByTerm(selectedTerm.getId());

        Map<Discipline, Integer> marks = manager.getMarksByTerm(selectedTerm.getId(), id);
        if (marks.isEmpty()) {
            List<Discipline> disciplines = manager.getDisciplinesByTerm(selectedTerm.getId());
            req.setAttribute("disciplines", disciplines);
        } else {
            req.setAttribute("disciplines", marks.keySet());
            req.setAttribute("marks", marks.values());
            double average = MarksService.getAverageMarks(marks.values());
            req.setAttribute("average", average);
        }
        req.setAttribute("student", student);

        req.getRequestDispatcher("JSP/student_progress.jsp").forward(req, resp);
    }
}