/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.customValidate;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@FacesValidator("admin.customValidate.checkDateRange")
public class checkDateRange implements Validator {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
        try {
//            if (value == null) {
//                return; // Let required="true" handle.
//            }

            UIInput createdDate = (UIInput) component.getAttributes().get("createdDateValid");
            UIInput installDate = (UIInput) component.getAttributes().get("installDate");
            UIInput installTime = (UIInput) component.getAttributes().get("installTime");

            SimpleDateFormat datetimeFormatter1 = new SimpleDateFormat("MM/dd/yyyy HH:mm");
            Date FromDate = datetimeFormatter1.parse((String) installDate.getValue() + " " + (String) installTime.getValue());
//        if (!createdDate.isValid()) {
//            return; // Already invalidated. Don't care about it then.
//        }

            Date startDate = (Date) createdDate.getValue();

//            if (startDate == null) {
//                return; // Let required="true" handle.
//            }
            if (startDate.after(FromDate)) {
                createdDate.setValid(false);
                throw new ValidatorException(new FacesMessage(
                        FacesMessage.SEVERITY_ERROR, "Start date may not be after end date.", null));
            }
        } catch (ParseException ex) {
            Logger.getLogger(checkDateRange.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
