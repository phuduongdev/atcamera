/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.phu;

import controller.OrderDetailFacade;
import controller.OrderMasterFacade;
import java.io.Serializable;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import entity.*;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
/**
 *
 * @author DTP
 */
@ManagedBean
@RequestScoped
public class aDashboard implements Serializable{
    @EJB
    private OrderMasterFacade orderMasterFacade;
    @EJB
    private OrderDetailFacade orderDetailFacade;

    private OrderMaster orderMaster;
    
    /**
     * Creates a new instance of aDashboard
     */
    public aDashboard() {
    }
    
    public List<OrderMaster> getOrderMaters(){
        return orderMasterFacade.findOrderMasterByStatus("new");
    }
    
    public List<OrderMaster> findOrderMasterBySevenDaysLater(){
        return orderMasterFacade.findOrderMasterBySevenDaysLater("completed");
    }
    
    public double pickOrderMasterPriceBySevenDaysLater(){
        double price = 0;
        for (OrderMaster col : findOrderMasterBySevenDaysLater()) {
            price = price + col.getOdmPrice();
        }
        return price;
    }
    
    public List<OrderMaster> findNewOrderMasterBySevenDaysLater(){
        return orderMasterFacade.findOrderMasterBySevenDaysLater("new");
    }
    
    public double pickNewOrderMasterPriceBySevenDaysLater(){
        double price = 0;
        for (OrderMaster col : findNewOrderMasterBySevenDaysLater()) {
            price = price + col.getOdmPrice();
        }
        return price;
    }
    
    public List<OrderMaster> findOrderMasterTotal(){
        return orderMasterFacade.findOrderMasterByStatus("completed");
    }
    
    public double pickOrderPriceTotal(){
        double price = 0;
        for (OrderMaster col : findOrderMasterTotal()) {
            price = price + col.getOdmPrice();
        }
        return price;
    }

    public OrderMaster getOrderMaster() {
        return orderMaster;
    }

    public void setOrderMaster(OrderMaster orderMaster) {
        this.orderMaster = orderMaster;
    }
    
    
}
