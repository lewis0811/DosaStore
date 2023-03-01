/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;

/**
 *
 * @author Admin
 */
public class OrderDetailDAO {

    public void saveCart(int orderId, Map<Integer, Cart> carts) {
        try {
            String sql = "INSERT INTO [dbo].[Order_Detail]\n"
                    + "           ([order_id]\n"
                    + "           ,[name]\n"
                    + "           ,[price]\n"
                    + "           ,[quantity]\n"
                    + "           ,[product_id])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            Connection conn = new DBUtils().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, orderId);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setString(2, cart.getProduct().getName());
                ps.setDouble(3, cart.getProduct().getPrice());
                ps.setInt(4, cart.getQuantity());
                ps.setInt(5, cart.getProduct().getId());
                ps.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
