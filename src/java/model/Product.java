/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
//
//	[name] [nvarchar](255) NULL,
//	[description] [nvarchar](max) NULL,
//	[price] [decimal](10, 2) NULL,
//	[image_url] [nvarchar](255) NULL,
//	[category] [nvarchar](255) NULL,
//	[id] [int] IDENTITY(1,1) NOT NULL,
//	[category_id] [int] NULL,

public class Product {
    String name; 
    String description;
    String image_url; 
    int id; 
    int category_id;
    int price;

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public Product() {
    }

    public Product(String name, String description, String image_url, int id, int category_id, int price) {
        this.name = name;
        this.description = description;
        this.image_url = image_url;
        this.id = id;
        this.category_id = category_id;
        this.price = price;
    }

    

    @Override
    public String toString() {
        return "Product{" + "name=" + name + ", description=" + description + ", image_url=" + image_url + ", category="  + ", id=" + id + ", category_id=" + category_id + '}';
    }
    
    
}
