package database;

import entity.Discipline;
import entity.Student;

import java.util.List;

public interface IDBManager {
    List<Student> getAllActiveStudents();

    void createStudent(String surname, String name, String group, String date);

    void deleteStudent(String id);

    Student getStudentById(String id);

    List<Discipline> getAllActiveDisciplines();

    void createDiscipline(String discipline);

    void deleteDiscipline(String id);

    Discipline getDisciplineById(String id);
}