/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.chien;

import controller.CategoryFacade;
import entity.Category;
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
public class aCategoryMB {

    @EJB
    private CategoryFacade categoryFacade;

    private Category category;

    /**
     * Creates a new instance of aCategoryMB
     */
    public aCategoryMB() {
    }

    public List<Category> getCategories() {
        return categoryFacade.findAll();
    }

    public String create_category() {
        try {
            category = new Category();
            category.setCtgid(tools.CommonUse.generateUUID());
            category.setCreatedDate(new Timestamp(new Date().getTime()));
            category.setCtgStatus("new");
            categoryFacade.create(category);
            
            category = new Category();
            return "accountView?faces-redirect=true";
        } catch (Exception e) {
//            msg = "TK da dc sd";
            return "accountCreate?faces-redirect=true";
        }

    }

    public String updateAccount() {
        
        return "accountView?faces-redirect=true";
    }

    public String blockAccount() {
        
        return "accountView?faces-redirect=true";
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

}
