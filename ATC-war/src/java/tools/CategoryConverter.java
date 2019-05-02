/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import entity.Category;
import javax.el.ValueExpression;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.inject.Inject;
import javax.persistence.EntityManager;

/**
 *
 * @author DTP
 */
@FacesConverter("tools.categoryCvt")
public class CategoryConverter implements Converter {

    @Inject
    private EntityManager em;

    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        return em.find(Category.class, value);
    }

    @Override
    public String getAsString(FacesContext context, UIComponent component, Object value) {
        return String.valueOf(((Category) value).getCtgid());
    }

}
