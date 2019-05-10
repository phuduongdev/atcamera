/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.phu;

import entity.Account;
import java.io.IOException;
import javax.faces.application.ResourceHandler;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DTP
 */
public class accRoleFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest reqt = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = reqt.getSession(false);

        String indexURI = reqt.getContextPath() + "/faces/admin/index.xhtml";
        Account a = (Account) session.getAttribute("user");
        
        boolean checkRole = a.getAccRole().equals("admin");

        if (checkRole) {
            chain.doFilter(request, response);
        } else {
            resp.sendRedirect(indexURI);
        }
    }

    @Override
    public void destroy() {

    }

}
