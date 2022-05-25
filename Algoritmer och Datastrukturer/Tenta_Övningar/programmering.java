public class programmering{

    public static int[] keep(int x, int []a){
        int[] res = new int[x];
        for(int i = 0; i < x; i++)
            res[i] = a[i];
        
        return res;
    }

    public static boolean isConstant(int[] a){
        for(int i = 0; i < a.length-1; i++){
            if(a[i] != a[i+1]){
                return false;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        int[] a = new int[] {10, 9, 8, 7 , 6, 5};
        System.out.println(a.toString());
        System.out.println(programmering.keep(3, a));

        System.out.println(a.length);
    }
}