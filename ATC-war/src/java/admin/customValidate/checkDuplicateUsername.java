/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.customValidate;

import controller.AccountFacade;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

/**
 *
 * @author DTP
 */
@ManagedBean
@FacesValidator("admin.customValidate.checkDuplicateUsername")
public class checkDuplicateUsername implements Validator{
    @EJB
    private AccountFacade accountFacade;

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
        if (accountFacade.checkDuplicateAccUsername(value.toString()).size() > 0) {
            FacesMessage msg = new FacesMessage("check duplicate account username", "Invalid username");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
    }
    
    
}
