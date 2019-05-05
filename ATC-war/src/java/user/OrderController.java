/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import controller.OrderDetailFacade;
import controller.OrderMasterFacade;
import controller.ProductFacade;
import entity.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.ArrayList;
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
public class OrderController implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @EJB
    private OrderDetailFacade orderDetailFacade;
    @EJB
    private OrderMasterFacade orderMasterFacade;
    @EJB
    private ProductFacade productFacade;
    
    private List<OrderDetail> cart;
    private String msg;

    /**
     * Creates a new instance of CartController
     */
    public OrderController() {
        cart = new ArrayList();
        
    }
    
    public List<Product> getTestProduct() {
        return productFacade.findAll().subList(1, 10);
    }
    
    
    
    public String checkOut() {
        try {
            if (cart.size() < 1) throw new Exception("Please choose some product");
            //        create order master
            OrderMaster om = new OrderMaster();
            om.setOdmid(tools.CommonUse.generateUUID());
            om.setCreatedDate(new Timestamp(new Date().getTime()));
//            om.setCtmid(new Customer());
            double omPrice = 0;
            for (OrderDetail item : cart) {
                
                omPrice = omPrice + item.getOddPrice();
            }
            om.setOdmPrice(omPrice);
            om.setOdmStatus("new");
            orderMasterFacade.create(om);
            for (OrderDetail item : cart) {
                item.setOdmid(om);
                orderDetailFacade.create(item);
            }
            cart = new ArrayList<>();
            msg = "Tao order thanh cong";
            return "success";
        } catch (Exception e) {
            msg = e.getMessage();
            System.out.println("----------------" + e);
        }
        return "fail";
    }
    
    public String cartsControl(Product selectProduct, String quanControl) {
        try {
            //            tao order item tu sp duoc user lua chon
            OrderDetail selectItem = new OrderDetail();
            selectItem.setOddid(tools.CommonUse.generateUUID());
            selectItem.setCreatedDate(new Timestamp(new Date().getTime()));
            selectItem.setOddQuantity(1);
            selectItem.setOddPrice(selectProduct.getPrdPrice());
            selectItem.setPrdid(selectProduct);
//            OrderMaster odm = new OrderMaster();
//            odm.setOdmid(odmUID);
//            selectItem.setOdmid(odm);
//            chua co sp nao trong gio hang
            if (cart.size() == 0) {
                cart.add(selectItem);
            } else {
                boolean cartHasItem = false;
                for (OrderDetail existItem : cart) {
                    if (selectItem.getPrdid().equals(existItem.getPrdid())) {
                        cartHasItem = true;
                        int cartItemIndex = cart.indexOf(existItem);
                        int existItemQuan = 0;
                        double existItemPrice = 0;
                        switch (quanControl) {
                            case "additem":
                                existItemQuan = existItem.getOddQuantity() + 1;
                                existItemPrice = existItem.getOddPrice() + selectItem.getOddPrice();
                                msg = "update quantity success";
                                break;
                            case "subitem":
                                if (existItem.getOddQuantity() > 1) {
                                    existItemQuan = existItem.getOddQuantity() - 1;
                                    existItemPrice = existItem.getOddPrice() - selectItem.getOddPrice();
                                    msg = "update quantity success";
                                } else {
                                    existItemQuan = existItem.getOddQuantity();
                                    existItemPrice = existItem.getOddPrice();
                                    msg = "San pham can it nhat 1 don vi de hoan thanh don hang";
                                }
                                break;
                        }
                        existItem.setOddQuantity(existItemQuan);
                        existItem.setOddPrice(existItemPrice);
                        cart.set(cartItemIndex, existItem);
                        break;
                    }
                }
                //da co selectProduct
                if (!cartHasItem) {
                    //chua co selectProduct
                    cart.add(selectItem);
                    msg = "add new success";
                }
            }
        } catch (Exception e) {
            System.err.println("------------ ??? ----------------" + e.getMessage());
        }
        return "view";
    }
    
    public List<OrderDetail> getCart() {
        return cart;
    }
    
    public void setCart(List<OrderDetail> cart) {
        this.cart = cart;
    }
    
    public String getMsg() {
        return msg;
    }
    
    public void setMsg(String msg) {
        this.msg = msg;
    }
    
}
