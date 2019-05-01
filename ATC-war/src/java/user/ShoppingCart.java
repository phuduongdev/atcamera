/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import entity.Item;
import entity.Product;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;

import javax.faces.bean.SessionScoped;

/**
 *
 * @author Minh Chien
 */
@ManagedBean
@SessionScoped
public class ShoppingCart {
    private List<Item> cart = new ArrayList<Item>();
    /**
     * Creates a new instance of ShoppingCart
     */
    public ShoppingCart() {
    }
     public List<Item> getCart() {
        return cart;
    }

    public void setCart(List<Item> cart) {
        this.cart = cart;
    }
    
     public int isExisting(Product p){
        for(int i = 0 ; i < this.cart.size(); i++)
            if(this.cart.get(i).getP().getPrdid().equals(p.getPrdid()))
                return i;
        return -1;
    }
    public String OderbyCart(Product p){
        int index = isExisting(p);
        if(index == -1)
            this.cart.add(new Item(p,1));
        else{
            int quatity = getCart().get(index).getQuatity()+1;
            this.cart.get(index).setQuatity(quatity);
        }
        return "basket";
    }
    public long getSum(){
        long s = 0;
        for (Item it : this.cart) 
            s += it.getQuatity() * it.getP().getPrdPrice();
        return s;  
    }
}
