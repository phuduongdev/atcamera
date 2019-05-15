/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author Minh Chien
 */
@ManagedBean(name = "nav1")
@SessionScoped
public class nav {

    /**
     * Creates a new instance of nav
     */
    public nav() {
    }
    public String newNav(){
        return "news";
    }
    public String navAboutus(){
        return "aboutus";
    }
    public String navContact(){
        return "contact";
    }
     public String navfag(){
        return "fag";
    }
      public String navterm(){
        return "termsandconditions";
    }
}
