/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.chien;

import controller.CustomerFacade;
import entity.Category;
import entity.Customer;
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
public class aCustomer implements Serializable {

    private static final long serialVersionUID = 1L;
    @EJB
    private CustomerFacade customerFacade;
    Customer ctm = new Customer();

    public Customer getCtm() {
        return ctm;
    }

    public void setCtm(Customer ctm) {
        this.ctm = ctm;
    }

    /**
     * Creates a new instance of aCustomer
     */
    public aCustomer() {
    }

    public String customerViewNav() {
        return "customerView?faces-redirect=true";
    }

    public String customerCreateNav() {
        ctm = new Customer();
        return "customerCreate?faces-redirect=true";
    }

    public String customerUpdateNav() {
        return "customerUpdate?faces-redirect=true";
    }

    public List<Customer> getCustomer() {
        return customerFacade.findAll();
    }
}
