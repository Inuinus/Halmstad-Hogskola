public class Land implements Comparable<Land>{
    String name;
    String capital;
    int invanare;
    
    Land(String name, String capital, int invanare){
        this.name = name;
        this.capital = capital;
        this.invanare = invanare;
    }

    public String toString(){
       String string = "Capital: " + this.capital + ", Name: " +
       this.name + ", Total citizens: " + this.invanare;
       return string; 
    }

    public int compareTo(Land land){
        if(this.invanare < land.invanare) return -1;
        else if(this.invanare == land.invanare) return 0;

        else return 1;
    }

    public static void main(String[] args) {
        Land land1 = new Land("Sweden", "Stockholm", 10435447);
        Land land2 = new Land("Norway", "Oslo", 5425270);
        Land land3 = new Land("Belgium", "Brussel", 11250585);
        Land land4 = new Land("Denmark", "Copenhagen", 5785864);
    }
}
