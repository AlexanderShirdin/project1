package database;

import entity.Discipline;
import entity.Student;
import entity.Term;

import java.util.List;
import java.util.Map;

public interface IDBManager {
    List<Student> getAllActiveStudents();

    void createStudent(String surname, String name, String group, String date);

    void deleteStudent(String id);

    Student getStudentById(String id);

    void modifyStudent(String id, String surname, String name, String group, String dateToDatabase);

    List<Discipline> getAllActiveDisciplines();

    void createDiscipline(String discipline);

    void deleteDiscipline(String id);

    Discipline getDisciplineById(String id);

    void modifyDiscipline(String id, String discipline);



    List<Term> getAllActiveTerms();

    List<Discipline> getDisciplinesByTerm(int id);

    Map<Discipline, Integer> getMarksByTerm(int idTerm, String idStudent);


    boolean canLogin(String login, String password, String role);
}