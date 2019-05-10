/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import controller.WishlistFacade;
import entity.Customer;
import entity.Product;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import entity.Wishlist;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Minh Chien
 */
@ManagedBean
@SessionScoped
public class WishListController implements Serializable {

    private static final long serialVersionUID = 1L;
    @EJB
    private WishlistFacade wishlistFacade;

    private Wishlist wl = new Wishlist();
    private Customer ctm = new Customer();
    private Product prd = new Product();

    /**
     * Creates a new instance of WishList
     */
    public WishListController() {
    }

    public List<Wishlist> getWishList() {
        FacesContext context = FacesContext.getCurrentInstance();
        HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
        HttpSession httpSession = request.getSession(false);
        ctm = ((Customer) httpSession.getAttribute("member"));
        return wishlistFacade.findWishListbyCtm(ctm);
    }

    public String navWish() {

        return "customer-wishlist?faces-redirect=true";
    }

    public String addWL() {
        FacesContext context = FacesContext.getCurrentInstance();
        HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
        HttpSession httpSession = request.getSession(false);
        ctm = ((Customer) httpSession.getAttribute("member"));
        
            
            wl.setCtmid(ctm);
            wl.setPrdid(prd);
            wishlistFacade.create(wl);
       
            return "customer-wishlist?faces-redirect=true";
       
    }

    /**
     * @return the wl
     */
    public Wishlist getWl() {
        return wl;
    }

    /**
     * @param wl the wl to set
     */
    public void setWl(Wishlist wl) {
        this.wl = wl;
    }

    /**
     * @return the ctm
     */
    public Customer getCtm() {
        return ctm;
    }

    /**
     * @param ctm the ctm to set
     */
    public void setCtm(Customer ctm) {
        this.ctm = ctm;
    }

    /**
     * @return the prd
     */
    public Product getPrd() {
        return prd;
    }

    /**
     * @param prd the prd to set
     */
    public void setPrd(Product prd) {
        this.prd = prd;
    }
}
