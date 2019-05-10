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
@FacesValidator("admin.customValidate.checkWhitespace")
public class checkWhitespace implements Validator {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
//        String pattern = "[a-zA-z0-9]+([ '-][a-zA-Z0-9]+)*";
        String patternWhiteSpace = "[a-zA-z0-9~!@#$%^&*]+";
        if (!value.toString().matches(patternWhiteSpace)) {
            FacesMessage msg = new FacesMessage("check whitespace", component.getClientId() + " cannot contain whitespace");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
    }

}
