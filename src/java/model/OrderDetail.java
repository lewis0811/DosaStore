/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;



/**
 *
 * @author Admin
 */

public class OrderDetail {
    private int id;
    private int orderId;
    private String name;
    private double price;
    private int quantity;
    private int productId;

    public OrderDetail(int id, int orderId, String name, double price, int quantity, int productId) {
        this.id = id;
        this.orderId = orderId;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.productId = productId;
    }

    public OrderDetail() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "id=" + id + ", orderId=" + orderId + ", name=" + name + ", price=" + price + ", quantity=" + quantity + ", productId=" + productId + '}';
    }
    
}
