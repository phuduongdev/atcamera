/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import controller.CustomerFacade;
import entity.Customer;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Minh Chien
 */
@ManagedBean
@SessionScoped
public class login {

    @EJB
    private CustomerFacade customerFacade;

    private static final long serialVersionUID = 1L;

    private Customer loginCustomer;
    private String email, password, msg;

    public List<Customer> getMyaccount(String type) {
        return customerFacade.findCustomerTitleByType(type);
    }

    public String accountViewNav() {
        FacesContext context = FacesContext.getCurrentInstance();
        HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
        HttpSession httpSession = request.getSession(false);
        loginCustomer = (Customer) httpSession.getAttribute("member");
        return "myAccount?faces-redirect=true";

    }

    public String updatePro() {
        customerFacade.edit(loginCustomer);
        return "myAccount?faces-redirect=true";

    }

    /**
     * Creates a new instance of login
     */
    public login() {
        loginCustomer = new Customer();
    }

    public String login() {
        loginCustomer = customerFacade.checkAccountLogin(email, password);
        FacesContext context = FacesContext.getCurrentInstance();
        try {
            if (loginCustomer != null) {
                context.getExternalContext().getSessionMap().put("member", loginCustomer);
                try {
                    context.getExternalContext().redirect("index.xhtml");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else {
                //Send an error message on Login Failure 
                context.addMessage(null, new FacesMessage("Authentication Failed. Check email or password."));
                return "login";

            }
        } catch (Exception e) {
            context.addMessage(null, new FacesMessage("Authentication Failed."));
        }
        return "";
    }

    public void logout() {
        FacesContext context = FacesContext.getCurrentInstance();
        context.getExternalContext().invalidateSession();
        try {
            context.getExternalContext().redirect("index.xhtml");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public Customer getLoginCustomer() {
        return loginCustomer;
    }

    public void setLoginCustomer(Customer loginCustomer) {
        this.loginCustomer = loginCustomer;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
