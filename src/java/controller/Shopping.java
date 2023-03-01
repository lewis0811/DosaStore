/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import dao.CategoryDAO;
import dao.ProductDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import model.Product;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Shopping", urlPatterns = {"/shopping"})
public class Shopping extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        final int PAGE_SIZE = 6;
        //lay tat ca san pham
        List<Category> listCategories = new CategoryDAO().getAllCategories();
        HttpSession session = request.getSession();
        
        
        String pageStr = request.getParameter("page");
        int page;
        if (pageStr != null) {
            page = Integer.parseInt(pageStr);
            if (page < 1) {
                page = 1;
            }
        } else {
            page = 1;
        }
        
        ProductDAO productDAO = new ProductDAO();
        
        int totalProducts = productDAO.getTotalProducts();
        int totalPage = totalProducts / PAGE_SIZE;
        if (totalPage % PAGE_SIZE != 0) {
            totalPage += 1;
        }
        
        if (page > totalPage) {
            page = totalPage;
        }
        List<Product> listProduct = productDAO.getProductsWithPagging(page, PAGE_SIZE);
        

        request.setAttribute("page", page);
        request.setAttribute("totalPage", totalPage);
        session.setAttribute("listCategories", listCategories);
        session.setAttribute("Url", "shopping");
        request.setAttribute("listProducts", listProduct);
        request.getRequestDispatcher("shopping.jsp").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Shopping.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Shopping.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
