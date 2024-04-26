/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author MinHee
 */
public class Orders {

    private int id;
    private Product product;
    private int quantity;
    private double price;
    private double amount;
    private int transaction;
    private Date created_at;

    public Orders() {
    }

    public Orders(int id, Product product, int quantity, double price, double amount, int transaction, Date created_at) {
        this.id = id;
        this.product = product;
        this.quantity = quantity;
        this.price = price;
        this.amount = amount;
        this.transaction = transaction;
        this.created_at = created_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getTransaction() {
        return transaction;
    }

    public void setTransaction(int transaction) {
        this.transaction = transaction;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    @Override
    public String toString() {
        return "Orders{" + "id=" + id + ", product=" + product + ", quantity=" + quantity + ", price=" + price + ", amount=" + amount + ", transaction=" + transaction + ", created_at=" + created_at + '}';
    }

   

}
