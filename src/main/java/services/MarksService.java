package services;

import java.util.Collection;

public class MarksService {

    public static double getAverageMarks(Collection<Integer> marks) {
        double summaMarks = 0;
        for (int mark : marks) {
            summaMarks = summaMarks + mark;
        }
        return summaMarks / marks.size();
    }
}
