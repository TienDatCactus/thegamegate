/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Tiến_Đạt
 */
public class Category {
        int categoryId ;
        String category;

    public Category(int categoryId, String category) {
        this.categoryId = categoryId;
        this.category = category;
    }

    public Category() {
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
        private static final Map<Integer, String> categoryMap = new HashMap<>();
        
        static {
            categoryMap.put(1,"Action");
            categoryMap.put(2,"Strategy");
            categoryMap.put(3,"Adventure");
            categoryMap.put(4,"Sports");
        }
        
        public static void main(String[] args) {
            Category cat = new Category(2, null);
            System.out.println("cc : " + cat.getCategory());
    }

    @Override
    public String toString() {
        return "Category{" + "categoryId=" + categoryId + ", category=" + category + '}';
    }
        
        
}
