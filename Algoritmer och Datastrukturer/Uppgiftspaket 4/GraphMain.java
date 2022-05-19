import java.awt.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class GraphMain {//Creating the class GraphMain(The Graph StdDraw thingy)

        static boolean overlap(Graph one, Graph other) {//One or the other
        double dx = one.iX - other.iX;//Creating a variable for delta X
        double dy = one.iY - other.iY;//Creating a variable for delta Y

        if(Math.pow(dx, 2) + Math.pow(dy, 2) <= Math.pow((one.iR + other.iR), 2)){//pythagorean theorem
            return true;
        }
        return false;
    }

    public static void main(String[] args) throws FileNotFoundException {
        Graph list = new Graph(0,0,0, 0);//Makes a new graph with nothing in it.

        File nFile = new File(System.getProperty("user.dir") + "\\karta1.txt\\");//Gets the karta txt
        Scanner input = new Scanner(nFile);

        StdDraw.setYscale(0, 1000);
        StdDraw.setXscale(0, 1000);
        StdDraw.setPenColor(Color.BLACK);//Sets the pens Xscale, Yscale and PenColour

        while (input.hasNextLine()) {//the function to get all the inputs(node,x,y,r)
            String node = input.nextLine();
            String x = input.nextLine();
            String y = input.nextLine();
            String r = input.nextLine();

            node = node.replaceAll("Node: ", "");
            x = x.replaceAll("x: ", "");
            y = y.replaceAll("y: ", "");
            r = r.replaceAll("r: ", "");

            int iNode = Integer.parseInt(node);
            int iX = Integer.parseInt(x);
            int iY = Integer.parseInt(y);
            int iR = Integer.parseInt(r);

            StdDraw.circle(iX, iY, iR);//the circle drawing and adding
            Graph circleNode = new Graph(iX, iY, iR, iNode);
            Graph.nodeArray.add(circleNode);
        }

        for (int i = 0; i < Graph.nodeArray.size(); i++) {
            for (int j = i + 1; j < Graph.nodeArray.size(); j++) {
                Graph firstNode = Graph.nodeArray.get(i);
                Graph secondNode = Graph.nodeArray.get(j);

                if (overlap(firstNode, secondNode)) {//if the overlap is true
                    StdDraw.line(firstNode.iX, firstNode.iY, secondNode.iX, secondNode.iY);
                    StdDraw.setPenColor(Color.PINK);
                    firstNode.addNeighbours(secondNode);
                    secondNode.addNeighbours(firstNode);
                }
            }
        }
        //If u wanna check if two nodes are connetected you simply type: System.out.println(Graph.nodeArray.get(nodenumber).isNetwrok(Graph.nodeArray.get(nodenumber)));
        //If you want to try to check the amount of connected networks you simply type: System.out.println(list.amountOfNetworks());
        //If you want to try to check the longest distance between a node in the network you type: System.out.println(list.distanceBetween(Graph.nodeArray.get(NODENUMBER)));
        //To check the shortest path between two nodes in a network type: System.out.println(list.BFS(Graph.nodeArray.get(NODENUMBER), Graph.nodeArray.get(NODENUMBER)));

    }
}
