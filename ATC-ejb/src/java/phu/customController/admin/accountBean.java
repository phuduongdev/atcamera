/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phu.customController.admin;

import entity.*;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 *
 * @author DTP
 */
@Stateless
public class accountBean implements accountBeanLocal {
@PersistenceContext(unitName = "ATC-ejbPU")
    private EntityManager em;

    protected EntityManager getEntityManager() {
        return em;
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public Boolean checkAccountLogin(String username, String password){
        TypedQuery q = em.createQuery("SELECT a FROM Account a WHERE a.accUserName = :username "
                + "and a.accPassword = :password", Account.class);
        q.setParameter("username", username);
        q.setParameter("password", password);
        if (q.getResultList().size() == 1) {
            return true;
        }else return false;
    }
}
