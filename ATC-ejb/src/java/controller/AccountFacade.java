/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Account;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 *
 * @author DTP
 */
@Stateless
public class AccountFacade extends AbstractFacade<Account> {

    @PersistenceContext(unitName = "ATC-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AccountFacade() {
        super(Account.class);
    }

    public Account checkAccountLogin(String username, String password) {
        try {
            TypedQuery<Account> q = em.createQuery("SELECT a FROM Account a WHERE a.accUserName = :username"
                    + " and a.accPassword = :password"
                    + " and a.accStatus = 'active'", Account.class);
            q.setParameter("username", username);
            q.setParameter("password", password);
            return q.getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public Integer checkDuplicateAccUsername(String username){
        try {
            TypedQuery q = em.createQuery("SELECT a FROM Account a WHERE a.accUserName = :username", Account.class);
            q.setParameter("username", username);
            return q.getMaxResults();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
