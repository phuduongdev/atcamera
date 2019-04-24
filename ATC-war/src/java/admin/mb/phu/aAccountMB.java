/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.phu;

import controller.AccountFacadeLocal;
import entity.Account;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author DTP
 */
@ManagedBean
@RequestScoped
public class aAccountMB {

    @EJB
    private AccountFacadeLocal accountFacade;

    private String userName, password, confirmPassword, description;

    /**
     * Creates a new instance of aAccountMB
     */
    public aAccountMB() {

    }

//    view all function
    public List<Account> getAccounts() {
        return accountFacade.findAll();
    }

//    create new
    public void createAccount() {
        Account acc = new Account();
        try {
            acc.setAccid(tools.CommonUse.generateUUID());
            acc.setCreatedDate(new Date());
            acc.setAccUserName(userName);
            if (password.equals(confirmPassword)){
                acc.setAccPassword(password);
            }else{
                throw new Exception();
            }
            acc.setAccStatus("1");
            acc.setAccDescript(description);
        } catch (Exception e) {
            
        }

        accountFacade.create(null);
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
