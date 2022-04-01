import java.util.Comparator;

public class LandInv implements Comparator<Land>{
    public int compare(Land land1, Land land2){
        if(land1.invanare > land2.invanare){
            return 1;
        }
        else if(land1.invanare == land2.invanare){
            return 0;
        }
        return -1;
    }
}
