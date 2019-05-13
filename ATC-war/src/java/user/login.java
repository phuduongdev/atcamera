/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import admin.mb.chien.uploadFile;
import admin.mb.phu.aLogin;
import controller.CustomerFacade;
import entity.Customer;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Minh Chien
 */
@ManagedBean
@SessionScoped
public class login implements Serializable {

    @EJB
    private CustomerFacade customerFacade;

    private static final long serialVersionUID = 1L;

    private Customer loginCustomer;
    private String email, password, msg, namefile;

    private Part file;

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
        if (file != null) {
            uploadFile();
            loginCustomer.setCtmImage("img/" + file.getSubmittedFileName());
            customerFacade.edit(loginCustomer);
        } else {
            customerFacade.edit(loginCustomer);
        }
        return "myAccount?faces-redirect=true";

    }

    public void uploadFile() {
        try {

            InputStream input = file.getInputStream();

            File f = new File("E:/anthangcamera/ATC-war/web/resources/img/" + file.getSubmittedFileName());

            if (!f.exists()) {
                f.createNewFile();
            }
            FileOutputStream output = new FileOutputStream(f);
            byte[] buffer = new byte[1024];
            int length;
            while ((length = input.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            input.close();
            output.close();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }

    }

    /**
     * Creates a new instance of login
     */
    public login() {
        loginCustomer = new Customer();
    }

    public void login() {
        loginCustomer = customerFacade.checkAccountLogin(email, password);
        FacesContext context = FacesContext.getCurrentInstance();
        HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
        HttpSession httpSession = request.getSession(false);
        if (loginCustomer != null) {
            context.getExternalContext().getSessionMap().put("member", loginCustomer);
            try {
                String beforeLoginUrl = (String) httpSession.getAttribute("beforeLogin");
                if (beforeLoginUrl != null) {
                    context.getExternalContext().redirect(beforeLoginUrl);
                }
                context.getExternalContext().redirect("index.xhtml");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            //Send an error message on Login Failure 
            context.addMessage(null, new FacesMessage("Authentication Failed. Check email or password."));

        }
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

    public Part getFile() {
        return file;
    }

    public void setFile(Part file) {
        this.file = file;
    }

    public String getNamefile() {
        return namefile;
    }

    public void setNamefile(String namefile) {
        this.namefile = namefile;
    }
}
