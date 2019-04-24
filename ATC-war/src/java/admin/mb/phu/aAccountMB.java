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
import javax.faces.bean.SessionScoped;

/**
 *
 * @author DTP
 */
@ManagedBean
@SessionScoped
public class aAccountMB {

    @EJB
    private AccountFacadeLocal accountFacade;

    private String uid, createDate, userName, password, confirmPassword, role, description, status;
    private Account account;

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
            if (password.equals(confirmPassword)) {
                acc.setAccPassword(password);
            } else {
                throw new Exception();
            }
            acc.setAccStatus("1");
            acc.setAccDescript(description);
        } catch (Exception e) {

        }

        accountFacade.create(null);
    }
    
    public void updateAccount(){
        accountFacade.edit(account);
        
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
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

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
