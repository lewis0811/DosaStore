/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Admin
 */
@WebFilter(filterName = "Authorization", urlPatterns = {"/admin/*"})
public class Authorization implements Filter {
    
      
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        
        HttpSession session = req.getSession();
        
        User user = (User) session.getAttribute("user");
        
        if(user != null && user.getRole() == true){
            chain.doFilter(request, response);
            return;
        }
//        req.setAttribute("error", "You don't have permission");
        res.sendRedirect("login");
    }

    /**
     * Return the filter configuration object for this filter.
     */

    /**
     * Destroy method for this filter
     */
    @Override
    public void destroy() {        
    }

    
    public void init(FilterConfig filterConfig) {        
        
    }
    
}
