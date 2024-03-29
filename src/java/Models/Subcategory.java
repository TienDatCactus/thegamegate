/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Tiến_Đạt
 */
public class Subcategory {

    String subcategoryId;
    String subcategory;

    public Subcategory(String subcategoryId, String subcategory) {
        this.subcategoryId = subcategoryId;
        this.subcategory = subcategory;
    }

    public Subcategory() {
    }

    public String getSubcategoryId() {
        return subcategoryId;
    }

    public void setSubcategoryId(String subcategoryId) {
        this.subcategoryId = subcategoryId;
    }

    public String getSubcategory() {
        return subcategory;
    }

    public void setSubcategory(String subcategory) {
        this.subcategory = subcategory;
    }

    @Override
    public String toString() {
        return "Subcategory{" + "subcategoryId=" + subcategoryId + ", subcategory=" + subcategory + '}';
    }

}
