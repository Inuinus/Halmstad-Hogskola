package Tenta_Övningar;

import java.util.Comparator;

public class BollComparator implements Comparator<Boll>{
    public int compare(Boll o1, Boll o2) {
        double distans1 = Math.sqrt(Math.pow(o1.x, 2) + Math.pow(o1.y, 2) + Math.pow(o1.z, 2));
        double distans2 = Math.sqrt(Math.pow(o2.x, 2) + Math.pow(o2.y, 2) + Math.pow(o2.z, 2));
        return ((Double)distans1).compareTo(distans2);
    }
    
}
