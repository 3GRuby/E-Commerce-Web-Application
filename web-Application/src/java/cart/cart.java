/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cart;

import java.util.ArrayList;

/**
 *
 * @author ujith
 */
public class cart {
    private ArrayList<cartItem>l ;

    public cart() {
    l = new ArrayList<cartItem>();
    }
public void addCart(cartItem o){
        for (int i = 0; i < l.size(); i++) {
        cartItem get = l.get(i);
        if(get.getId()==o.getId()){
            o.setQty(get.getQty()+o.getQty());
            l.remove(get);
        }
    }
        l.add(o);
}
    /**
     * @return the l
     */
    public ArrayList<cartItem> getL() {
        return l;
    }
    
}
