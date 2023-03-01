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

public class Order {
    private int id;
    private int userId;
    private double totalPrice;
    private String order_date;
    private String note;
    private String name;
    private String phone;
    private String address;

    public Order(int id, int userId, double totalPrice, String order_date, String note, String name, String phone, String address) {
        this.id = id;
        this.userId = userId;
        this.totalPrice = totalPrice;
        this.order_date = order_date;
        this.note = note;
        this.name = name;
        this.phone = phone;
        this.address = address;
    }
    public Order(int userId, double totalPrice, String note, String name, String phone, String address) {
        this.userId = userId;
        this.totalPrice = totalPrice;
        this.note = note;
        this.name = name;
        this.phone = phone;
        this.address = address;
    }

    public Order() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getOrder_date() {
        return order_date;
    }

    public void setOrder_date(String order_date) {
        this.order_date = order_date;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", userId=" + userId + ", totalPrice=" + totalPrice + ", order_date=" + order_date + ", note=" + note + ", name=" + name + ", phone=" + phone + ", address=" + address + '}';
    }
    
}
