/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.phu;

import java.io.IOException;
import javax.faces.application.ResourceHandler;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DTP
 */
public class adminFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request,
            ServletResponse response,
            FilterChain chain) throws IOException, ServletException {

        HttpServletRequest reqt = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = reqt.getSession(false);

        String loginURI = reqt.getContextPath() + "/faces/admin/login.xhtml";
        System.out.println("-----------------------" + loginURI);
        boolean loggedIn = session != null && session.getAttribute("user") != null;
        boolean loginRequest = reqt.getRequestURI().equals(loginURI);
        boolean resourceRequest = reqt.getRequestURI().startsWith(reqt.getContextPath() + ResourceHandler.RESOURCE_IDENTIFIER);

        if (loggedIn || loginRequest || resourceRequest) {
            chain.doFilter(request, response);
        } else {
            resp.sendRedirect(loginURI);
        }
    }

    @Override
    public void destroy() {

    }

}
