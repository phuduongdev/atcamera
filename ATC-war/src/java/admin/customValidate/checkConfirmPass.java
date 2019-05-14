/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.customValidate;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.component.UIInput;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

/**
 *
 * @author DTP
 */
@FacesValidator("admin.customValidate.checkConfirmPass")
public class checkConfirmPass implements Validator {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
        String passwordId = (String) component.getAttributes().get("fieldPassword");
//        System.out.println("_________________________" + passwordId);
        UIInput textInput = (UIInput) context.getViewRoot().findComponent(passwordId);
        if (textInput == null) {
            throw new IllegalArgumentException(String.format("Unable to find component with id %s", passwordId));
        }
        // Get its value, the entered text of the first field.
        String passwordValue = (String) textInput.getValue();
        if (!value.toString().equals(passwordValue)) {
            FacesMessage msg = new FacesMessage("check confirm password", "Not match Password");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
    }

}
