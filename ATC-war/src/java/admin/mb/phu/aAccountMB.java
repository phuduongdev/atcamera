/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.phu;

import controller.AccountFacade;
import entity.Account;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author DTP
 */
@ManagedBean
@SessionScoped
public class aAccountMB implements Serializable {

    private static final long serialVersionUID = 1L;
    @EJB
    private AccountFacade accountFacade;

    private String confirmPassword, msg, formStatus;
    private Account account;

    /**
     * Creates a new instance of aAccountMB
     */
    public aAccountMB() {
        account = new Account();
    }

//    ***** navigation zone
    public String accountViewNav() {
        return "accountView?faces-redirect=true";
    }

    public String accountCreateNav() {
        account = new Account();
        return "accountCreate?faces-redirect=true";
    }

    public String accountUpdateNav() {
        return "accountUpdate?faces-redirect=true";
    }

//    ***** Process zone
    public List<Account> getAccounts() {
        return accountFacade.findAll();
    }

    public String createAccount() {
        try {
            account.setAccid(tools.CommonUse.generateUUID());//            
            account.setAccStatus("new");
            accountFacade.create(account);
            return "accountView?faces-redirect=true";
        } catch (Exception e) {
//            msg = "TK da dc sd";
            return "accountCreate?faces-redirect=true";
        }
    }

    public String updateAccount() {
        accountFacade.edit(account);
        return "accountView?faces-redirect=true";
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
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

    public String getFormStatus() {
        return formStatus;
    }

    public void setFormStatus(String formStatus) {
        this.formStatus = formStatus;
    }

}
