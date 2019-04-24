/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author DTP
 */
@ManagedBean
@RequestScoped
public class nav {

    /**
     * Creates a new instance of nav
     */
    public nav() {
    }
    
    public String accountView(){
        return "accountView";
    }
    
    public String accountCreate(){
        return "accountCreate";
    }
    
    public String accountUpdate(){
        return "accountUpdate?faces-redirect=true";
    }
    
    public String productView(){
        return "productView?faces-redirect=true";
    }
}
