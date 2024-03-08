package Models;

import java.util.*;
import java.sql.Date;

public class Games {
    int productId;
    Date realeaseDate;
    String publisher;
    String developer;
    int languageId;
    int categoryId;
    int subCategoryId;
    float rate;

    public Games() {
    }

    public Games(int productId, Date realeaseDate, String publisher, String developer, int languageId, int categoryId, int subCategoryId, float rate) {
        this.productId = productId;
        this.realeaseDate = realeaseDate;
        this.publisher = publisher;
        this.developer = developer;
        this.languageId = languageId;
        this.categoryId = categoryId;
        this.subCategoryId = subCategoryId;
        this.rate = rate;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public Date getRealeaseDate() {
        return realeaseDate;
    }

    public void setRealeaseDate(Date realeaseDate) {
        this.realeaseDate = realeaseDate;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getDeveloper() {
        return developer;
    }

    public void setDeveloper(String developer) {
        this.developer = developer;
    }

    public int getLanguageId() {
        return languageId;
    }

    public void setLanguageId(int languageId) {
        this.languageId = languageId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getSubCategoryId() {
        return subCategoryId;
    }

    public void setSubCategoryId(int subCategoryId) {
        this.subCategoryId = subCategoryId;
    }

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        return "Games{" + "productId=" + productId + ", realeaseDate=" + realeaseDate + ", publisher=" + publisher + ", developer=" + developer + ", languageId=" + languageId + ", categoryId=" + categoryId + ", subCategoryId=" + subCategoryId + ", rate=" + rate + '}';
    }
    
    
    
    
}
