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


public class User {
    public static final String ADMIN = "ADMIN";
    public static final String USER = "USER";
    private int id;
    private String username;
    private String password;
    private String display_name;
    private String address;
    private String email;
    private String phone;
    private Boolean role;

    public User(int id, String username, String password, String display_name, String address, String email, String phone, Boolean role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.display_name = display_name;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.role = role;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDisplay_name() {
        return display_name;
    }

    public void setDisplay_name(String display_name) {
        this.display_name = display_name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Boolean getRole() {
        return role;
    }

    public void setRole(Boolean role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", username=" + username + ", password=" + password + ", display_name=" + display_name + ", address=" + address + ", email=" + email + ", phone=" + phone + ", role=" + role + '}';
    }
    
}
