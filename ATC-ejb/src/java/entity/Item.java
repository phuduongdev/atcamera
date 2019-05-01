/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Entity;

import javax.persistence.Id;

/**
 *
 * @author Minh Chien
 */
@Entity
public class Item implements Serializable {
   @Id
   private Product p = new Product();
   private int quatity;

    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }

    public int getQuatity() {
        return quatity;
    }

    public void setQuatity(int quatity) {
        this.quatity = quatity;
    }
    public Item(Product product,int quatity){
        super();
        this.p = product;
        this.quatity = quatity;
    }
    public Item(){
        super();
    }
}
