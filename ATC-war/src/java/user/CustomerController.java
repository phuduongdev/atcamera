/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import controller.CustomerFacade;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.util.*;
import entity.*;
import java.io.IOException;
import java.io.Serializable;
import java.sql.Timestamp;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Minh Chien
 */
@ManagedBean
@SessionScoped
public class CustomerController implements Serializable {

    private static final long serialVersionUID = 1L;
    @EJB
    private CustomerFacade customerFacade;

    private Customer ctm = new Customer();
    private String confim, msg = " ",ctmid;

    

    public CustomerController() {
    }

    public List<Customer> getCustomer() {
        return customerFacade.findAll();
    }

    public String add() {
        if (this.confim.equals(ctm.getCtmPassword())) {
            ctm.setCtmid(tools.CommonUse.generateUUID());
            ctm.setCreatedDate(new Timestamp(new Date().getTime()));
            ctm.setCtmStatus("new");
            this.customerFacade.create(this.ctm);
            ctm = new Customer();
            return "index";
        } else {
            this.msg = "Not match!!!";
            return "register";
        }
    }
   

    public String navResgiter() {
        msg = " ";

        return "register";
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getConfim() {
        return confim;
    }

    public void setConfim(String confim) {
        this.confim = confim;
    }

    public Customer getCtm() {
        return ctm;
    }

    public void setCtm(Customer ctm) {
        this.ctm = ctm;
    }
    public String getCtmid() {
        return ctmid;
    }

    public void setCtmid(String ctmid) {
        this.ctmid = ctmid;
    }
}
