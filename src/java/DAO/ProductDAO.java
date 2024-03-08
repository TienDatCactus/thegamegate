/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.*;
import DAO.DBConnect;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Tiến_Đạt
 */
public class ProductDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

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

    public List<Product> getallHotProduct() {
        List<Product> list = new ArrayList<>();
        String query = "Select * from Products where Price > 50";
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
        List<Product> list = dao.myFilter(0, 100, 2, 2);
        for (Product o : list) {
            System.out.println(o);
        }
    }
}
