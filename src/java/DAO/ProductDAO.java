/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.*;
import DAO.DBConnect;
import java.sql.*;
import java.util.*;
import java.sql.Date;

/**
 *
 * @author Tiến_Đạt
 */
public class ProductDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();

    public List<Product> getallProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM Products ";

        try {
            DBConnect db = new DBConnect();
            con = db.connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("ProductId");
                String name = rs.getString("Name");
                String description = rs.getString("Description");
                int categoryId = rs.getInt("CategoryId");
                int inStock = rs.getInt("InStock");
                double price = rs.getDouble("Price");
                String imagePath = rs.getString("ImagePath");
                list.add(new Product(productId, name, description, categoryId, inStock, price, imagePath));
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return list;
    }

    public Product getProductbyId(int id) {
        String query = "SELECT * FROM Products WHERE ProductID = ? ";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setInt(1, id);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        int productId = rs.getInt("ProductId");
                        String name = rs.getString("Name");
                        String description = rs.getString("Description");
                        int categoryId = rs.getInt("CategoryId");
                        int inStock = rs.getInt("InStock");
                        double price = rs.getDouble("Price");
                        String imagePath = rs.getString("ImagePath");
                        return new Product(productId, name, description, categoryId, inStock, price, imagePath);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Games getGamebyId(int id) {
        String query = "SELECT * FROM Games WHERE ProductID = ? ";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setInt(1, id);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        int productId = rs.getInt(1);
                        Date releaseDate = rs.getDate(2);
                        String publisher = rs.getString(3);
                        String dev = rs.getString(4);
                        int languageId = rs.getInt(5);
                        int categoryId = rs.getInt(6);
                        int subcateId = rs.getInt(7);
                        float rate = rs.getFloat(8);
                        return new Games(productId, releaseDate, publisher, dev, languageId, categoryId, subcateId, rate);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Category getCategoryById(int id) {
        String query = "select pc.Name from ProductCategories pc join Games ga \n"
                + "on pc.CategoryID = ga.CategoryID\n"
                + "where ga.ProductID = ?";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setInt(1, id);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        int subcateId = rs.getInt(1);
                        String name = rs.getString(2);
                        return new Category(subcateId, name);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Subcategory getSubCategoryById(int id) {
        String query = "select pc.Name from ProductSubcategories pc join Games ga \n"
                + "on pc.SubcategoryID = ga.SubcategoryID\n"
                + "where ga.ProductID = ?\n";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setInt(1, id);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        float catetId = rs.getFloat(1);
                        String name = rs.getString(2);
                        return new Subcategory(catetId, name);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> myFilter(float minPrice, float maxPrice, int language, int category) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * "
                + "FROM Products "
                + "JOIN Games ON Products.ProductID = Games.ProductID "
                + "WHERE Products.Price BETWEEN ? AND ? "
                + "AND Games.LanguageID = ? "
                + "AND Products.CategoryID = ?";

        try {
            DBConnect db = new DBConnect();
            con = db.connection;
            ps = con.prepareStatement(query);
            ps.setFloat(1, minPrice);
            ps.setFloat(2, maxPrice);
            ps.setInt(3, language);
            ps.setInt(4, category);
            rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("ProductId");
                String name = rs.getString("Name");
                String description = rs.getString("Description");
                int categoryId = rs.getInt("CategoryId");
                int inStock = rs.getInt("InStock");
                double price = rs.getDouble("Price");
                String imagePath = rs.getString("ImagePath");
                list.add(new Product(productId, name, description, categoryId, inStock, price, imagePath));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        Product pd = dao.getProductbyId(12);
        System.out.println(pd);
    }
}
