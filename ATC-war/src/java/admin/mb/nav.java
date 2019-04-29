/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb;

import admin.mb.phu.aAccountMB;
import entity.Account;
import entity.Account_;
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
//    ********* test zone **************
    public String testCreate(){
        return "accCreate";
    }
    
//    ****************** product zone **********************
//    ####### category ###########
    public String categoryView(){
        return "categoryView";
    }
    public String categoryCreate(){
        return "categoryCreate";
    }
    public String categoryUpdate(){
        return "categoryUpdate";
    }
    
    //    ####### camera ###########
    public String cameraView(){
        return "cameraView";
    }
    public String cameraCreate(){
        return "cameraCreate";
    }
    public String cameraUpdate(){
        return "cameraUpdate";
    }
    
    //    ####### DVR ###########
    public String dvrView(){
        return "dvrView";
    }
    public String dvrCreate(){
        return "dvrCreate";
    }
    public String dvrUpdate(){
        return "dvrUpdate";
    }
    
        //    ####### Others ###########
    public String otherView(){
        return "otherView";
    }
    public String otherCreate(){
        return "otherCreate";
    }
    public String otherUpdate(){
        return "otherUpdate";
    }
    

//    ********** Account zone ******
    public String accountView() {
        return "accountView?faces-redirect=true";
    }

    public String accountCreate() {
        
        return "accountCreate?faces-redirect=true";
    }

    public String accountUpdate() {
        return "accountUpdate?faces-redirect=true";
    }

}
