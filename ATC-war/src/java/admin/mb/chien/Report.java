/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.chien;

import controller.ViewTopProductFacade;
import entity.ViewTopProduct;
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
public class Report {
    @EJB
    private ViewTopProductFacade viewTopProductFacade;
    ViewTopProduct view = new ViewTopProduct();
    
    /**
     * Creates a new instance of Report
     */
    public Report() {
    }
    public List<ViewTopProduct> getViewtop(){
        return viewTopProductFacade.findAll();
    }
}
