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
//    @EJB
//    private ViewTopProductByDateFacade viewTopProductByDateFacade;
    @EJB
    private ViewTopProductFacade viewTopProductFacade;
    String todate , enddate;
    
    public String getTodate() {
        return todate;
    }

    public void setTodate(String todate) {
        this.todate = todate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

//    public ViewTopProduct getView() {
//        return view;
//    }
//
//    public void setView(ViewTopProduct view) {
//        this.view = view;
//    }

//    public ViewTopProductByDate getViewtobydate() {
//        return viewtobydate;
//    }
//
//    public void setViewtobydate(ViewTopProductByDate viewtobydate) {
//        this.viewtobydate = viewtobydate;
//    }
//    ViewTopProduct view = new ViewTopProduct();
//    ViewTopProductByDate viewtobydate = new ViewTopProductByDate();
      public String customerViewNav() {
        return "report?faces-redirect=true";
    }
    /**
     * Creates a new instance of Report
     */
    public Report() {
    }
    public List<ViewTopProduct> getViewtop(){
        return viewTopProductFacade.findAll();
    }
    
//     public List<ViewTopProductByDate> getViewtopbydate(){
//        return viewTopProductByDateFacade.findAll();
//    }
//    public  List<ViewTopProductByDate> getViewtopproductbydate(){
//      
//        return viewTopProductByDateFacade.findproductdate(todate,enddate);
//    }
    public String date(String todate,String enddate){
        this.todate = todate;
        this.enddate = enddate;
        return "report?faces-redirect=true";
    }
}
