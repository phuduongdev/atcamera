/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.customControl.chien;

import entity.Account;
import entity.Product;
import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

/**
 *
 * @author DTP
 */
@Stateless
@LocalBean
public class productSB {

    private EntityManager em;

    protected EntityManager getEntityManager() {
        return em;
    }
    
    public List<Product> findAllProduct(){
        TypedQuery q = em.createQuery("SELECT p FROM Product p", Product.class);
        return q.getResultList();
    }
}
