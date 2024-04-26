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
public class User {

    private int id;
    private String emaill;
    private String username;
    private String address;
    private String description;
    private String phone;
    private Date created_at;
    private String image;
    private Date update_at;

    public User() {
    }

    public User(int id, String emaill, String username, String address, String description, String phone, Date created_at, String image, Date update_at) {
        this.id = id;
        this.emaill = emaill;
        this.username = username;
        this.address = address;
        this.description = description;
        this.phone = phone;
        this.created_at = created_at;
        this.image = image;
        this.update_at = update_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmaill() {
        return emaill;
    }

    public void setEmaill(String emaill) {
        this.emaill = emaill;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(Date update_at) {
        this.update_at = update_at;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", emaill=" + emaill + ", username=" + username + ", address=" + address + ", description=" + description + ", phone=" + phone + ", created_at=" + created_at + ", image=" + image + ", update_at=" + update_at + '}';
    }

}
