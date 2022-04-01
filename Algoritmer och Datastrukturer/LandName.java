import java.util.Comparator;

public class LandName implements Comparator<Land>{
    public int compare(Land land1, Land land2){
        int a = land1.name.compareTo(land2.name);
        if(a > 0){
            return 1;
        }
        else if(a == 0){
                return 0;
        }
        return -1;
    }
}
