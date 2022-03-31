public class Testing {


 
    public static void main(String[] args) {
        MyArrayList<Integer> array = new MyArrayList<>(); 
        //array.add(1);
        //array.add(5);
        System.out.println(array);
        //System.out.print(array.get(0));
        array.clear();
        System.out.println(array);
        System.out.println(array.toString());   
        //System.out.println(array.contains(1));

        array.add(1);
        array.add(5);
        array.add(7);
        array.add(23);
        System.out.println(array);
        System.out.println(array.indexOf(23));
        array.Remove(0);
        System.out.println(array);
        array.add(5);
        System.out.println(array);
        System.out.println(array.remove(5));
        System.out.println(array);

        array.add(5);
        array.add(5);
        System.out.println(array);
        System.out.println(array.removeAll(5));
        System.out.println(array);

        array.set(1, 2);
        System.out.println(array);
        
        System.out.println(array.isEmpty());

        System.out.println(array.size());
        array.clear();
        System.out.println(array.isEmpty());
        array.add(5);
        System.out.println(array.isEmpty());

    }
}
