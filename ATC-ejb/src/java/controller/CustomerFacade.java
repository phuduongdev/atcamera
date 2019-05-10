/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Customer;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 *
 * @author DTP
 */
@Stateless
public class CustomerFacade extends AbstractFacade<Customer> {

    @PersistenceContext(unitName = "ATC-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomerFacade() {
        super(Customer.class);
    }

    public Customer checkAccountLogin(String email, String password) {
        try {
            TypedQuery<Customer> q = em.createQuery("SELECT a FROM Customer a WHERE a.ctmEmail = :email"
                    + " and a.ctmPassword = :password", Customer.class);
            q.setParameter("email", email);
            q.setParameter("password", password);
            return q.getSingleResult();
        } catch (Exception e) {
        }
        return null;
    }

    public List<Customer> findCustomerTitleByType(String type) {
        TypedQuery q = em.createQuery("SELECT c  FROM Customer c WHERE c.ctmid = :type", Customer.class);
        q.setParameter("type", type);

        return q.getResultList();
    }
}
