/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.catalina.User;

/**
 *
 * @author MinHee
 */
public class Transactions {

    private int id;
    private User user;
    private String name;
    private String email;
    private String address;
    private String phone;
    private int amount;
    private String message;
    private int active;
    private Date created_at;
    private List<Orders> order = new ArrayList<>();

    public Transactions() {
    }

    public Transactions(int id, User user, String name, String email, String address, String phone, int amount, String message, int active, Date created_at) {
        this.id = id;
        this.user = user;
        this.name = name;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.amount = amount;
        this.message = message;
        this.active = active;
        this.created_at = created_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public List<Orders> getOrder() {
        return order;
    }

    public void setOrder(List<Orders> order) {
        this.order = order;
    }

    @Override
    public String toString() {
        return "Transactions{" + "id=" + id + ", user=" + user + ", name=" + name + ", email=" + email + ", address=" + address + ", phone=" + phone + ", amount=" + amount + ", message=" + message + ", active=" + active + ", created_at=" + created_at + ", order=" + order + '}';
    }

}
