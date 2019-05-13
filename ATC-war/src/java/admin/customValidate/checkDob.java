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
@FacesValidator("admin.customValidate.checkDob")
public class checkDob implements Validator {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
        String patternMultiSpecialChars = "(\\d{4})\\/((?:0[1-9])|(?:1[0-2]))\\/((?:0[0-9])|(?:[1-2][0-9])|(?:3[0-1]))";
        if (!value.toString().isEmpty()) {
            if (!value.toString().matches(patternMultiSpecialChars)) {
                FacesMessage msg = new FacesMessage("check dob", component.getClientId() + " invalid. Must be yyyy/MM/dd");
                msg.setSeverity(FacesMessage.SEVERITY_ERROR);
                throw new ValidatorException(msg);
            }
        }

    }

}
