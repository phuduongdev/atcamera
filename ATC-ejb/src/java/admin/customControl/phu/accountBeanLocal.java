/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.customControl.phu;

import javax.ejb.Local;

/**
 *
 * @author DTP
 */
@Local
public interface accountBeanLocal {
    Boolean checkAccountLogin(String username, String password);
};

