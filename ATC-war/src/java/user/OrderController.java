/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import controller.CameraFacade;
import controller.CustomerFacade;
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
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
    @EJB
    private CustomerFacade customerFacade;
    @EJB
    private CameraFacade cameraFacade;

    private List<OrderDetail> cart;
    private List<OrderDetail> orderReview;
    private OrderMaster orderMaster;
    private Product checkoutProduct;
    private Camera camera;
    private Customer checkoutCustomer;
    private String msg;
    private double odmPrice, installPirce, summaryPrice;

    /**
     * Creates a new instance of CartController
     */
    public OrderController() {
        cart = new ArrayList<>();
        orderReview = new ArrayList<>();
        orderMaster = new OrderMaster();
        checkoutProduct = new Product();
        camera = new Camera();
        checkoutCustomer = new Customer();
        odmPrice = installPirce = summaryPrice = 0;
        msg = "";
    }
//    navigation zone

    public String checkOutNav() {
        if (cart.size() <= 0) {
            return "orderBasket?faces-redirect=true";
        } else {
            checkoutCustomer = pickLoginCustomer();
            if (checkoutCustomer != null) {
                return "checkout?faces-redirect=true";
            } else {
                FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("beforeLogin", "orderBasket.xhtml");
                return "login?faces-redirect=true";
            }
        }
    }

    public String detailNav() {
        orderReview = orderDetailFacade.findOrderDetailsByOrderMasterID(orderMaster);
        return "orderPrint?faces-redirect=true";
    }

//    process zone
//    public List<Product> getTestProduct() {
//        return productFacade.findAll().subList(1, 10);
//    }
    public String checkOut() {
        try {
            if (cart.size() < 1) {
                throw new Exception("nullcart");
            }
            if (checkoutCustomer.getCtmFirstName().isEmpty()
                    && checkoutCustomer.getCtmAddress().isEmpty()
                    && checkoutCustomer.getCtmPhone().isEmpty()) {
                throw new Exception("nullcust");
            }
            //update customer info
            checkoutCustomer.setCtmAddress(checkoutCustomer.getCtmAddress().toUpperCase());
            customerFacade.edit(checkoutCustomer);
            //        create order master
            orderMaster = new OrderMaster();
            orderMaster.setOdmid(tools.CommonUse.generateUUID());
            orderMaster.setCreatedDate(new Timestamp(new Date().getTime()));
            orderMaster.setCtmid(checkoutCustomer);
            orderMaster.setOdmPrice(pickODMasterPrice());
            orderMaster.setOdmStatus("new");
            orderMasterFacade.create(orderMaster);
            // insert item in cart to table order details
            for (OrderDetail item : cart) {
                item.setOdmid(orderMaster);
                orderDetailFacade.create(item);
                //update status for product
                item.getPrdid().setPrdStatus("active");
                productFacade.edit(item.getPrdid());
            }
            orderReview = cart;
            cart = new ArrayList<>();
            msg = "success";
            return "orderPrint?faces-redirect=true";
        } catch (Exception e) {
            msg = e.getMessage();
            System.out.println("----------------" + e);
        }
        return "fail?faces-redirect=true";
    }

    public String cartsControl(Product selectProduct, String quanControl) {
        try {
            //            tao order item tu sp duoc user lua chon
            OrderDetail selectItem = new OrderDetail();
            selectItem.setOddid(tools.CommonUse.generateUUID());
            selectItem.setCreatedDate(new Timestamp(new Date().getTime()));
            selectItem.setOddQuantity(1);
            double orderPrice = (selectProduct.getPrdPrice()) * (1d - (selectProduct.getPrdDiscount()) / 100d);
            System.out.println("------------------" + orderPrice);
            selectItem.setOddPrice(orderPrice);
            selectItem.setPrdid(selectProduct);
//            chua co sp nao trong gio hang
            if (cart.isEmpty()) {
                cart.add(selectItem);
            } else {
                //da co selectProduct
                boolean cartHasItem = false;
                for (OrderDetail existItem : cart) {
                    if (selectItem.getPrdid().equals(existItem.getPrdid())) {
                        cartHasItem = true;
                        int cartItemIndex = cart.indexOf(existItem);
                        int existItemQuan = 0;
                        double existItemPrice = 0;
//                        dung cho nut cong tru
                        switch (quanControl) {
                            case "additem":
                                existItemQuan = existItem.getOddQuantity() + 1;
                                existItemPrice = existItem.getOddPrice() + selectItem.getOddPrice();
                                msg = "addition quantity success";
                                break;
                            case "subitem":
                                if (existItem.getOddQuantity() > 1) {
                                    existItemQuan = existItem.getOddQuantity() - 1;
                                    existItemPrice = existItem.getOddPrice() - selectItem.getOddPrice();
                                    msg = "subtraction quantity success";
                                } else {
                                    existItemQuan = existItem.getOddQuantity();
                                    existItemPrice = existItem.getOddPrice();
                                    msg = "need at least one product quantity";
                                }
                                break;
                        }
                        existItem.setOddQuantity(existItemQuan);
                        existItem.setOddPrice(existItemPrice);
                        cart.set(cartItemIndex, existItem);
                        break;
                    }
                }
                if (!cartHasItem) {
                    //chua co selectProduct
                    cart.add(selectItem);
                    msg = "add new success";
                }
            }
        } catch (Exception e) {
            System.err.println("------------ ??? ----------------" + e.getMessage());
        }
        return "orderBasket";
    }

    public void removeCart(OrderDetail item) {
        cart.remove(item);
    }

    private Customer pickLoginCustomer() {
        FacesContext context = FacesContext.getCurrentInstance();
        HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
        HttpSession httpSession = request.getSession(false);
        Customer c = null;
        try {
            c = (Customer) httpSession.getAttribute("member");
        } catch (Exception e) {
        }
        return c;
    }

    public double pickODMasterPrice() {
        double odmPrice = 0;
        for (OrderDetail item : cart) {
            odmPrice = odmPrice + item.getOddPrice();
        }
        return odmPrice;
    }

    public double pickInstallationPrice() {
        double installPirce = 0;
        for (OrderDetail item : cart) {
            if (item.getPrdid().getCtgid().getCtgType().equalsIgnoreCase("camera")) {
                installPirce = installPirce + item.getOddQuantity() * 1;
            }
        }
        return installPirce;
    }

    public double pickSummaryTotal() {
        return pickODMasterPrice() + pickInstallationPrice() + pickODMasterPrice() * 0.1;
    }

    public List<OrderMaster> getOrderMasters() {
        return orderMasterFacade.findOrderByCust(pickLoginCustomer());
    }

//    report zone
    public Camera findCameraByProduct(Product p) {
        return cameraFacade.findCameraByProduct(p);
    }

    public List<VCameraOrder> findCameraByOrder() {
//        List<VCameraOrder> test = new ArrayList<>();
//        for (OrderDetail odd : orderReview) {
//            if (odd.getPrdid().getCtgid().getCtgType().equalsIgnoreCase("camera")) {
//                test.add(orderMasterFacade.findCameraByOrder(odd.getOddid()));
//            }
//        }
//        return test;
        return orderMasterFacade.findCameraByOrder(orderMaster.getOdmid());
    }

    public List<VDvrOrder> findDvrByOrder() {
        return orderMasterFacade.findDvrByOrder(orderMaster.getOdmid());
    }
    
    public List<VProductOrder> findProductByOrder() {
        return orderMasterFacade.findProductByOrder(orderMaster.getOdmid());
    }

//    public List<OrderDetail>
    public List<OrderDetail> getCart() {
        return cart;
    }

    public double pickOrderPriceHistory() {
        double odmPrice = 0;
        for (OrderDetail item : orderReview) {
            odmPrice = odmPrice + item.getOddPrice();
        }
        return odmPrice;
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

    public Camera getCamera() {
        return camera;
    }

    public void setCamera(Camera camera) {
        this.camera = camera;
    }

    public Customer getCheckoutCustomer() {
        return checkoutCustomer;
    }

    public void setCheckoutCustomer(Customer checkoutCustomer) {
        this.checkoutCustomer = checkoutCustomer;
    }

    public List<OrderDetail> getOrderReview() {
        return orderReview;
    }

    public void setOrderReview(List<OrderDetail> orderReview) {
        this.orderReview = orderReview;
    }

    public OrderMaster getOrderMaster() {
        return orderMaster;
    }

    public void setOrderMaster(OrderMaster orderMaster) {
        this.orderMaster = orderMaster;
    }

    public double getOdmPrice() {
        return odmPrice;
    }

    public void setOdmPrice(double odmPrice) {
        this.odmPrice = odmPrice;
    }

    public double getInstallPirce() {
        return installPirce;
    }

    public void setInstallPirce(double installPirce) {
        this.installPirce = installPirce;
    }

    public double getSummaryPrice() {
        return summaryPrice;
    }

    public void setSummaryPrice(double summaryPrice) {
        this.summaryPrice = summaryPrice;
    }

}
