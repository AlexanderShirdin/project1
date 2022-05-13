package services;

import entity.Mark;

import java.util.Collection;

public class MarksService {

    public static double getAverageMarks(Collection<Mark> marks) {
        double summMarks = 0;
        for (Mark mark : marks) {
            summMarks = summMarks + mark.getMark();
        }
        return summMarks / marks.size();
    }
}
