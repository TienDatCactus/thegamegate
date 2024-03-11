package Models;

import java.sql.Date;

public class Games {

    int productId;
    String releaseDate;
    String publisher;
    String developer;
    int languageId;
    int categoryId;
    String subCategoryId;
    String rate;

    public Games() {
    }

    public Games(int productId, String releaseDate, String publisher, String developer, int languageId, int categoryId, String subCategoryId, String rate) {
        this.productId = productId;
        this.releaseDate = releaseDate;
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

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
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

    public String getSubCategoryId() {
        return subCategoryId;
    }

    public void setSubCategoryId(String subCategoryId) {
        this.subCategoryId = subCategoryId;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        return "Games{" + "productId=" + productId + ", releaseDate=" + releaseDate + ", publisher=" + publisher + ", developer=" + developer + ", languageId=" + languageId + ", categoryId=" + categoryId + ", subCategoryId=" + subCategoryId + ", rate=" + rate + '}';
    }

}
