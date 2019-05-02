/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.chien;

import controller.CameraFacade;
import controller.CategoryFacade;
import controller.ProductFacade;
import entity.*;
import java.io.Serializable;
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
public class aProductMB implements Serializable {

    private static final long serialVersionUID = 1L;

    @EJB
    private CategoryFacade categoryFacade;
    @EJB
    private CameraFacade cameraFacade;
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
        this.product = new Product();
        this.camera = new Camera();
        this.dvr = new Dvr();
    }

    //    ***** navigation zone
    public String productViewNav() {
        return "productView?faces-redirect=true";
    }

    public String productCreateNav(String cateType) {
        if (cateType.equalsIgnoreCase("camera")) {
            this.camera = new Camera();
        } else if (cateType.equalsIgnoreCase("dvr")) {
            this.dvr = new Dvr();
        } else {
            this.product = new Product();
        }
        return "productCreate?faces-redirect=true";
    }

    public String productUpdateNav(Product item) {
        this.product = item;
        if (item.getCtgid().getCtgType().equalsIgnoreCase("camera")) {
            this.camera = cameraFacade.findCameraByProduct(item);
        }
        return "productUpdate?faces-redirect=true";
    }

    public String productDetailsNav(Product item) {
        this.product = item;
        productFacade.edit(item);
        //chu y truong hop category type bi null
        if (item.getCtgid().getCtgType().equalsIgnoreCase("camera")) {
            this.camera = cameraFacade.findCameraByProduct(item);
            cameraFacade.edit(camera);
        }
        return "productDetails?faces-redirect=true";
    }

//    ***** Process ************
    public List<Product> getProducts() {
        return productFacade.findAll();
    }

    public List<Category> getCategories() {
        return categoryFacade.findAll();
    }

    public String createProduct() {
        try {
            product.setPrdid(tools.CommonUse.generateUUID());
            product.setCreatedDate(new Timestamp(new Date().getTime()));
            product.setPrdStatus("new");
            product.setCtgid(categoryFacade.find(cateid));
            productFacade.create(product);
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

    public Camera getCamera() {
        return camera;
    }

    public void setCamera(Camera camera) {
        this.camera = camera;
    }

    public Dvr getDvr() {
        return dvr;
    }

    public void setDvr(Dvr dvr) {
        this.dvr = dvr;
    }

}
