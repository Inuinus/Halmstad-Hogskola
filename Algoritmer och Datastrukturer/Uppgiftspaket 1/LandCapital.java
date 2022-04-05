import java.util.Comparator;

public class LandCapital implements Comparator<Land>{
   public int compare(Land land1, Land land2){
       int a = land1.capital.compareTo(land2.capital);
       if(a > 0){
           return 1;
       }
       else if(a == 0){
           return 0;
       }
       return -1;
   } 
}
