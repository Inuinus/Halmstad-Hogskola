import java.util.Comparator;

public class Uppgift2c{
    public static MyArrayList<Land> findMinMax(MyArrayList<Land> list){
        Land minst = list.get(0);
        Land storst = list.get(0);

        for (int i = 1; i < list.size; i++) {
            if(list.get(i).compareTo(storst) > 0){
                storst = list.get(i);
                 }
            if((list.get(i).compareTo(minst) < 0)){
                minst = list.get(i);
            }
        }
        MyArrayList<Land> pair = new MyArrayList<>();
        pair.add(minst);
        pair.add(storst);
        return pair;
    }

    public static MyArrayList<Land> findMinMax(MyArrayList<Land> list, Comparator<Land> c){
        Land minst = list.get(0);
        Land storst = list.get(0);

        for (int i = 1; i < list.size; i++) {
            if(c.compare(list.get(i),minst) > 0){
                storst = list.get(i);
            }
            if(c.compare(list.get(i),minst) < 0){
                minst = list.get(i);
            }
        }
        MyArrayList<Land> pair = new MyArrayList<>();
        pair.add(minst);
        pair.add(storst);
        return pair;
    }

    }
