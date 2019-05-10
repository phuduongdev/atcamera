/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.customValidate;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

/**
 *
 * @author DTP
 */
@FacesValidator("admin.customValidate.checkSpecialChars")
public class checkSpecialChars implements Validator{

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
//        String pattern = "[a-zA-z0-9]+([ '-][a-zA-Z0-9]+)*";
        String patternSpecialChars = "[a-zA-z0-9]+";
        if (!value.toString().matches(patternSpecialChars)){
            FacesMessage msg = new FacesMessage("check special character", component.getClientId() + " cannot contain special characters");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
    }
    
}
