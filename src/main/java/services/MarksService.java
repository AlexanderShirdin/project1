package services;

import entity.Mark;

import java.util.Collection;

public class MarksService {

    public static double getAverageMarks(Collection<Mark> marks) {
        double summaMarks = 0;
        for (Mark mark : marks) {
            summaMarks = summaMarks + mark.getMark();
        }
        return summaMarks / marks.size();
    }
}
