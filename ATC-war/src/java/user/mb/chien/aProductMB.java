/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.mb.chien;

import admin.customControl.chien.productSB;
import entity.Product;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author DTP
 */
@ManagedBean
@RequestScoped
public class aProductMB {
    @EJB
    private productSB productSB;
    
    private Product product;
   
    /**
     * Creates a new instance of aProductMB
     */
    public aProductMB() {
    }
    
    public List<Product> findProducts(){
        return productSB.findAllProduct();
    }
    
}
