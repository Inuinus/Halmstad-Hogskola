public class Boll{
    double r, x, y ,z;

    public Boll(double r, double x, double y, double z){
        this.r = r; 
        this.x = x; 
        this.y = y; 
        this.z = z;
    }

    //a)
    public int compareTo(Boll that){
        return ((Double)this.r).compareTo(that.r);
    }
}