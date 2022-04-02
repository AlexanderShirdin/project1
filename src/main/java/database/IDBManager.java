package database;

import entity.Student;

import java.util.List;

public interface IDBManager {

    List<Student> getAllActiveStudents();
}