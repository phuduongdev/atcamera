/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import controller.ProductFacade;
import entity.*;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author Minh Chien
 */
@ManagedBean
@SessionScoped
public class ProductController implements Serializable {

    private static final long serialVersionUID = 1L;
    @EJB
    private ProductFacade productFacade;
    Category ctg = new Category();

    public Category getCtg() {
        return ctg;
    }

    public void setCtg(Category ctg) {
        this.ctg = ctg;
    }
    Product product = new Product();

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    /**
     * Creates a new instance of ProductController
     */
    public ProductController() {
    }

    public List<Product> findAll() {
        return this.productFacade.findAll();
    }

    public String details(Product p) {
        this.product = p;
        return "details?faces-redirect=true";
    }

    public String details() {
        this.productFacade.edit(product);
        return "";
    }

    public String productclient(Category ctg) {
        this.ctg = ctg;
        return "productclient?faces-redirect=true";
    }

    ;
    public List<Product> getProductType() {
        return productFacade.findProductbyCtg(ctg);
    }

    public List<Product> getProductlist() {
        return productFacade.Listproduct(product);
    }
}
