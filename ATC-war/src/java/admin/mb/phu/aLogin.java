/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.phu;

import controller.AccountFacade;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author DTP
 */
@ManagedBean
@RequestScoped
public class aLogin {
    @EJB
    private AccountFacade accountFacade;

    
    private String username, password, msg;
    
    /**
     * Creates a new instance of aLogin
     */
    public aLogin() {
    }

    public String checkLogin(){
        boolean result = accountFacade.checkAccountLogin(username, password);
        if (!result){
            msg = "Login Fails.";
            return "login";
        }else {
            msg = "Login Success.";
            return "index";
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
