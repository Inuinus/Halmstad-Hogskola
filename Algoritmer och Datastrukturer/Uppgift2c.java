import java.util.Comparator;

public class Uppgift2c{
    public static MyArrayList<Land> findMinMax(MyArrayList<Land> list){
        Land biggest = list.get(0);
        Land smallest = list.get(0);
        for (int i = 1; i < list.size; i++) {
            if(list.get(i).compareTo(biggest) > 0){   // compareTo jämför ju beroende på vilken datatyp elementen är...
                biggest = list.get(i);  // alltså måste vi på uppgift 2b skapa 3 helt olika datatyper?
            }
            if((list.get(i).compareTo(smallest) < 0)){
                smallest = list.get(i);
            }
        }
        MyArrayList<Land> pair = new MyArrayList<>();
        pair.add(smallest);
        pair.add(biggest);
        return pair;
    }

    public static MyArrayList<Land> findMinMax(MyArrayList<Land> list, Comparator<Land> c){
        Land biggest = list.get(0);
        Land smallest = list.get(0);
        for (int i = 1; i < list.size; i++) {
            if(c.compare(list.get(i),biggest) > 0){   // compareTo jämför ju beroende på vilken datatyp elementen är...
                biggest = list.get(i);  // alltså måste vi på uppgift 2b skapa 3 helt olika datatyper?
            }
            if(c.compare(list.get(i),smallest) < 0){
                smallest = list.get(i);
            }
        }
        MyArrayList<Land> pair = new MyArrayList<>();
        pair.add(smallest);
        pair.add(biggest);
        return pair;
    }

    }