/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.chien;

import controller.ProductFacade;
import entity.*;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author DTP
 */
@ManagedBean
@SessionScoped
public class aProductMB {
    @EJB
    private ProductFacade productFacade;
    
    private Product product;
    private Camera camera;
    private Dvr dvr;
    private String cateid;
    
    /**
     * Creates a new instance of aProductMB
     */
    public aProductMB() {
        product = new Product();
        camera = new Camera();
        dvr = new Dvr();
    }
    //    ***** navigation zone
    public String productViewNav() {
        return "productView?faces-redirect=true";
    }

    public String productCreateNav() {
        product = new Product();
        return "productCreate?faces-redirect=true";
    }

    public String productUpdateNav() {
        return "productUpdate?faces-redirect=true";
    }

    public String cameraCreateNav() {
        camera = new Camera();
        return "productCreate?faces-redirect=true";
    }

    public String cameraUpdateNav() {
        return "productUpdate?faces-redirect=true";
    }
    
//    ***** Process

    public List<Product> getProducts() {
        return productFacade.findAll();
    }

    public String createProduct() {
        try {
//            product.setCtgid(tools.CommonUse.generateUUID());
//            product.setCreatedDate(new Timestamp(new Date().getTime()));
//            product.setCtgStatus("new");
            productFacade.create(product);
//            category = new Category();
            return "productView?faces-redirect=true";
        } catch (Exception e) {
//            msg = "TK da dc sd";
            return "productCreate?faces-redirect=true";
        }

    }

    public String updateProduct() {
        return "accountView?faces-redirect=true";
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getCateid() {
        return cateid;
    }

    public void setCateid(String cateid) {
        this.cateid = cateid;
    }
    
    
}
