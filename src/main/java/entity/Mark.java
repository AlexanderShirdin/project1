package entity;

public class Mark {
    private int mark = -1;
    private Discipline discipline;
    private Term term;
    private Student student;

    public Mark() {
    }

    public Mark(int mark, Discipline discipline, Term term, Student student) {
        this.mark = mark;
        this.discipline = discipline;
        this.term = term;
        this.student = student;
    }

    public int getMark() {
        return mark;
    }

    public void setMark(int mark) {
        this.mark = mark;
    }

    public Discipline getDiscipline() {
        return discipline;
    }

    public void setDiscipline(Discipline discipline) {
        this.discipline = discipline;
    }

    public Term getTerm() {
        return term;
    }

    public void setTerm(Term term) {
        this.term = term;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Mark mark1 = (Mark) o;

        if (mark != mark1.mark) return false;
        if (discipline != null ? !discipline.equals(mark1.discipline) : mark1.discipline != null) return false;
        if (term != null ? !term.equals(mark1.term) : mark1.term != null) return false;
        return student != null ? student.equals(mark1.student) : mark1.student == null;
    }

    @Override
    public int hashCode() {
        int result = mark;
        result = 31 * result + (discipline != null ? discipline.hashCode() : 0);
        result = 31 * result + (term != null ? term.hashCode() : 0);
        result = 31 * result + (student != null ? student.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Mark{" +
                "mark=" + mark +
                ", discipline=" + discipline +
                ", term=" + term +
                ", student=" + student +
                '}';
    }
}
