/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.phu;

import controller.AccountFacade;
import entity.Account;
import java.sql.Timestamp;
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
public class aAccountMB {

    @EJB
    private AccountFacade accountFacade;

    private String confirmPassword, msg;
    private Account Account;

    /**
     * Creates a new instance of aAccountMB
     */
    public aAccountMB() {
        Account = new Account();
    }

//    view all function
    public List<Account> getAccounts() {
        return accountFacade.findAll();
    }

//    create new
    public String createAccount() {
        try {
            Account.setAccid(tools.CommonUse.generateUUID());
            Account.setCreatedDate(new Timestamp(new Date().getTime()));
            Account.setAccStatus("1");
            accountFacade.create(Account);
            Account = new Account();
//            confirmPassword = "";
            return "accountView?faces-redirect=true";
        } catch (Exception e) {
            msg = "TK da dc sd";
            return "accountCreate?faces-redirect=true";
        }
        
    }

    public String updateAccount() {
        accountFacade.edit(Account);
        return "accountView?faces-redirect=true";
    }

    public String blockAccount() {
        Account.setAccStatus("0");
        accountFacade.edit(Account);
        return "accountView?faces-redirect=true";
    }

    public Account getAccount() {
        return Account;
    }

    public void setAccount(Account Account) {
        this.Account = Account;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    
}
