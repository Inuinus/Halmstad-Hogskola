import java.util.*;

public class Graph {

    public static ArrayList <Graph> nodeArray = new ArrayList<>();
    public static ArrayList <Graph> arrayCopy = new ArrayList<>();
    ArrayList<Graph> neighbour = new ArrayList<>();
    ArrayList<Graph> network = new ArrayList<>();

    boolean visited;
    int iX;
    int iY;
    int iR;
    int data;

    public Graph(int iX, int iY, int iR, int data) {//Constructer of the Graph with all the needed things.
        this.iX = iX;
        this.iY = iY;
        this.iR = iR;
        this.data = data;
        this.neighbour = new ArrayList<>();
    }

    public Graph(String string) {
    }

    public void addNeighbours(Graph neighbourNode){
        this.neighbour.add(neighbourNode);
    }

    public void setNeighbours(ArrayList<Graph> neighbours){
        this.neighbour = neighbours;
    }

    public List<Graph> getNeighbours(){
        return neighbour;
    }

    public int amountOfNetworks() {//method for how many Networks there are in the Area.
        int counter = 0;
        arrayCopy.addAll(nodeArray);

        for (int i = 0; i < arrayCopy.size(); i++) {
            DFS(arrayCopy.get(i));

            if(network.size() >= 1){
                counter++;
            }

            for (int k = 0; k < network.size(); k++) {
                for (int j = 1; j < arrayCopy.size(); j++)
                    if (network.contains(arrayCopy.get(j))) {
                        arrayCopy.remove(j);
                    }
                }
            }

        return counter;
    }

    public void DFS(Graph other){//Djupet först sökning
        Stack<Graph> stack = new Stack<Graph>();
        stack.add(other);

        while(!stack.isEmpty()){//while the stack isnt empty, we pop the values. If we havent visited the value we add this value to network.
            Graph value = stack.pop();

            if(!value.visited){
                network.add(value);

                value.visited = true;
            }

            List<Graph> neighbours = value.getNeighbours();//Creates a new List with the value of Neighbours
            for(int i = 0; i < neighbours.size(); i++){//A for loop for i = 0 and goes to the size of the neightbours
                Graph temp = neighbours.get(i);//uses the Class Graph to make a temp value and gets the value of the neighbours

                if(temp != null && !temp.visited){//If these temp values are not null and isnt visited, we add these to a stack that we created above.
                    stack.add(temp);
                }
            }
        }
    }

    public boolean isNetwork(Graph other){//A method to check if the network is connected or not. Using the DFS method.
        DFS(other);
        return network.contains(other);
    }

    public double distanceBetween(Graph other) {//A method to check the distanceBetween two Nodes
        double curriD;
        double furtherD = 0;
        double dx;
        double dy;

        DFS(other);

        for (int i = 1; i < network.size(); i++) {//For loop for the network.size
            DFS(other);

            dx = network.get(i).iX - other.iX;
            dy = network.get(i).iY - other.iY;

            curriD = Math.sqrt(Math.pow(dx, 2) + Math.pow(dy, 2));

            if (curriD > furtherD) {
                furtherD = curriD;
            }
        }
        return furtherD;
    }

    public int BFS(Graph one, Graph other){//Bredden först sökning
        LinkedList<Integer> queue = new LinkedList<>();
        LinkedList<Integer> res = new LinkedList<>();
        int jumps = 0;
        int[] prev = new int[nodeArray.size()];

        if(one.data == other.data)// If it is duplicate, distance is zero
        {                   
            return jumps;
        }
        queue.add(one.data);            //Adds the chosen Node ID to the queue

        for(int i = 0; i < nodeArray.size(); i++)//all elements in prev is set to -1 to represent not visited
        { 
            prev[i] = -1;
        }

        while(queue.size() != 0){        //Goes throught the queue until it is empty
            int curri = queue.poll();

            for (Graph node : nodeArray.get(curri).getNeighbours()){//Puts the first element from the queue into curr and removes the value from the queue
                int n = node.data;  //puts the first element from queue int curr and removes it from queue
                if(prev[n] == -1){
                    prev[n] = curri;
                    if(n == other.data){//n becomes the ID of each Node
                        while(n != one.data){
                            res.addFirst(n);
                            n = prev[n];
                            jumps++;
                        }
                        return jumps;
                    }
                    queue.add(n);
                }
            }
        }
        return jumps;
    }

}

