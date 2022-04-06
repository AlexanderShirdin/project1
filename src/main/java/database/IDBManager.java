package database;

import entity.Discipline;
import entity.Student;

import java.util.List;

public interface IDBManager {
    List<Student> getAllActiveStudents();

    List<Discipline> getAllActiveDisciplines();
}