/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Category;
import model.Product;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Manager", urlPatterns = {"/manager"})
public class Manager extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        final int PAGE_SIZE = 5;
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String pageStr = request.getParameter("page");
        int page;
        if (pageStr != null) {
            page = Integer.parseInt(pageStr);
            if (page < 1) {
                //set prev
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
        
        List<Product> listProducts = productDAO.getProductsWithPagging(page, PAGE_SIZE);
        List<Category> listCategories = new CategoryDAO().getAllCategories();
        
             
        request.setAttribute("page", page);
        request.setAttribute("totalPage", totalPage);
        session.setAttribute("listCategories", listCategories);
        request.setAttribute("listProducts", listProducts);
        
        request.getRequestDispatcher("ManageProduct.jsp").forward(request, response);
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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
