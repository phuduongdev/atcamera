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
        category = new Category();
    }

//    ***** navigation zone
    public String categoryViewNav() {
        return "categoryView?faces-redirect=true";
    }

    public String categoryCreateNav() {
        category = new Category();
        return "categoryCreate?faces-redirect=true";
    }

    public String categoryUpdateNav() {
        return "categoryUpdate?faces-redirect=true";
    }

//    ***** process zone
    public List<Category> getCategories() {
        return categoryFacade.findAll();
    }

    public List<String> getCategoryType(){
        return categoryFacade.findDistinctCategoryType();
    }
    
    public List<Category> getCategoryTitle(String type){
        return categoryFacade.findCategoryTitleByType(type);
    }
    
    public String createCategory() {
        try {
//            category = new Category();
            category.setCtgid(tools.CommonUse.generateUUID());
            category.setCreatedDate(new Timestamp(new Date().getTime()));
            category.setCtgStatus("new");
            categoryFacade.create(category);
//            category = new Category();
            return "categoryView?faces-redirect=true";
        } catch (Exception e) {
//            msg = "TK da dc sd";
            return "categoryCreate?faces-redirect=true";
        }

    }

    public String updateCategory() {
        categoryFacade.edit(category);
        return "accountView?faces-redirect=true";
    }
    public String titleCategory(Category c) {
        this.category = c;
        return "productclient";
    }
    public String viewtitleCategory() {
        categoryFacade.edit(category);
        return "";
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

}
