/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.phu;

import controller.AccountFacade;
import entity.Account;
import java.io.IOException;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author DTP
 */
@ManagedBean
@RequestScoped
public class aLogin {

    @EJB
    private AccountFacade accountFacade;

    private Account loginAccount;
    private String username, password, msg;

    /**
     * Creates a new instance of aLogin
     */
    public aLogin() {
        loginAccount = new Account();
    }

//    public String checkLogin() {
//        boolean result = accountFacade.checkAccountLogin(username, password);
//        if (!result) {
//            msg = "Login Fails.";
//            return "login";
//        } else {
//            msg = "Login Success.";
//            return "index";
//        }
//    }

    public void login() {
        loginAccount = accountFacade.checkAccountLogin(username, password);
        FacesContext context = FacesContext.getCurrentInstance();
        if (loginAccount != null) {
            context.getExternalContext().getSessionMap().put("user", loginAccount.getAccUserName());
            context.getExternalContext().getSessionMap().put("role", loginAccount.getAccRole());
            try {
                context.getExternalContext().redirect("index.xhtml");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            //Send an error message on Login Failure 
            context.addMessage(null, new FacesMessage("Authentication Failed. Check username or password."));
        }
    }

    public void logout() {
        FacesContext context = FacesContext.getCurrentInstance();
        context.getExternalContext().invalidateSession();
        try {
            context.getExternalContext().redirect("login.xhtml");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
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
