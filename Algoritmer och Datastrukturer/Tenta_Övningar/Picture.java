package Tenta_Övningar;

import java.awt.Color;

public class Picture {
    public Picture(String string) {
    }

    Picture p = new Picture("unknown.png");{
    w = p.getWidth();
    h = p.getHeight();

    for(int x = 0; x < w; x++){
        for(int y = 0; y < h; y++){
            while(x = y){
                p.set(x,y, Color.black);
            }
        }
    }

    }


    
    
}
