/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.phu;

import controller.OrderMasterFacade;
import entity.*;
import java.io.Serializable;
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
public class aOrderMB implements Serializable {

    @EJB
    private OrderMasterFacade orderMasterFacade;

    private static final long serialVersionUID = 1L;

    private OrderMaster order;
    private OrderDetail orderDetail;

    /**
     * Creates a new instance of aOrderMB
     */
    public aOrderMB() {
        order = new OrderMaster();
    }

    //    ***** navigation zone
    public String viewNav() {
        return "orderView?faces-redirect=true";
    }

    public String updateNav() {
        return "orderUpdate?faces-redirect=true";
    }

//    ***** Process zone
    public List<OrderMaster> getOrders() {
        return orderMasterFacade.findAll();
    }
    
    

    public OrderMaster getOrder() {
        return order;
    }

    public void setOrder(OrderMaster order) {
        this.order = order;
    }

}
