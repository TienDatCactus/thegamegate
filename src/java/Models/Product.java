/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.Date;
import java.util.*;

public class Product {

    int productId;
    String name;
    String description;
    int categoryId;
    int inStock;
    double price;
    String imagePath;

    public Product() {
    }

    public Product(int productId, String name, String description, int categoryId, int inStock, double price, String imagePath) {
        this.productId = productId;
        this.name = name;
        this.description = description;
        this.categoryId = categoryId;
        this.inStock = inStock;
        this.price = price;
        this.imagePath = imagePath;
    }

    public int getProductId() {
        return productId;
    }

    public String getGameName(int id) {
        if (id == productId) {
            return this.name;
        }
        return null;
    }

    public void setProductId(int productId) {
        this.productId = productId;
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

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getInStock() {
        return inStock;
    }

    public void setInStock(int inStock) {
        this.inStock = inStock;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", name=" + name + ", description=" + description + ", categoryId=" + categoryId + ", inStock=" + inStock + ", price=" + price + ", imagePath=" + imagePath + '}';
    }

}
