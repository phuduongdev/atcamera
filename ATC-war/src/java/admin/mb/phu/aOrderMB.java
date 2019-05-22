/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.phu;

import controller.OrderDetailFacade;
import controller.OrderMasterFacade;
import entity.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author DTP
 */
@ManagedBean
@SessionScoped
public class aOrderMB implements Serializable {

    @EJB
    private OrderDetailFacade orderDetailFacade;

    @EJB
    private OrderMasterFacade orderMasterFacade;

    private static final long serialVersionUID = 1L;

    private OrderMaster order;
    private OrderDetail orderDetail;
    private String installDate, installTime, msg;

    /**
     * Creates a new instance of aOrderMB
     */
    public aOrderMB() {
        order = new OrderMaster();
        orderDetail = new OrderDetail();
    }

    //    ***** navigation zone
    public String viewNav() {
        return "orderView?faces-redirect=true";
    }

    public String updateNav() {
        if (order.getInstallationDate() != null) {
            SimpleDateFormat date = new SimpleDateFormat("MM/dd/yyyy");
            SimpleDateFormat time = new SimpleDateFormat("HH:ss");
            Date installationDate = order.getInstallationDate();
            installDate = date.format(installationDate);
            installTime = time.format(installationDate);
        }else{
            installDate = "";
            installTime = "";
        }
        return "orderUpdate?faces-redirect=true";
    }

//    ***** Process zone
    public List<OrderMaster> getOrders() {
        return orderMasterFacade.findAll();
    }

    public List<OrderDetail> getOrderDetailsByOMID(OrderMaster selectOM) {
        return orderDetailFacade.findOrderDetailsByOrderMasterID(selectOM);
    }

    public List<Product> getProductHasTypeDvr() {
        return orderMasterFacade.findProductsByCtgType("dvr");
    }

    public List<Product> getProductHasTypeCamera() {
        return orderMasterFacade.findProductsByCtgType("camera");
    }

    public String updateOrder() {
        FacesContext context = FacesContext.getCurrentInstance();
        try {
            System.out.println("------------------" + installDate);
            SimpleDateFormat datetimeFormatter1 = new SimpleDateFormat("MM/dd/yyyy HH:mm");
            Date FromDate = datetimeFormatter1.parse(installDate + " " + installTime);
            if (FromDate.before(order.getCreatedDate())){
                throw new Exception("Wrong Installation date");
            }
            order.setInstallationDate(new Timestamp(FromDate.getTime()));
            if (order.getOdmStatus() == null) {
                order.setOdmStatus("active");
            }
            orderMasterFacade.edit(order);
            return "orderView?faces-redirect=true";
        } catch (ParseException ex) {
            
            Logger.getLogger(aOrderMB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            context.addMessage(null, new FacesMessage(ex.getMessage()));
            Logger.getLogger(aOrderMB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "orderUpdate";
    }

    public OrderMaster getOrder() {
        return order;
    }

    public void setOrder(OrderMaster order) {
        this.order = order;
    }

    public OrderDetail getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(OrderDetail orderDetail) {
        this.orderDetail = orderDetail;
    }

    public String getInstallDate() {
        return installDate;
    }

    public void setInstallDate(String installDate) {
        this.installDate = installDate;
    }

    public String getInstallTime() {
        return installTime;
    }

    public void setInstallTime(String installTime) {
        this.installTime = installTime;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

}
