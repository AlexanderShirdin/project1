package entity;

import java.util.ArrayList;
import java.util.List;

public class Term {
    private int id;
    private String name;
    private String duration;
    private int status;
    private List<Discipline> discipline = new ArrayList<>();
}
