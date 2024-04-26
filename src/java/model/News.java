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
public class News {

    private int id;
    private String title;
    private String content;
    private String image_link;
    private Date created_at;

    public News() {
    }

    public News(int id, String title, String content, String image_link, Date created_at) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.image_link = image_link;
        this.created_at = created_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage_link() {
        return image_link;
    }

    public void setImage_link(String image_link) {
        this.image_link = image_link;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    @Override
    public String toString() {
        return "News{" + "id=" + id + ", title=" + title + ", content=" + content + ", image_link=" + image_link + ", created_at=" + created_at + '}';
    }

}
