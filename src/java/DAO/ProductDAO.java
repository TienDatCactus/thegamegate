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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tiến_Đạt
 */
public class ProductDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public List<Product> getallProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM Products ";
        try {
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("ProductId");
                String name = rs.getString("Name");
                String description = rs.getString("Description");
                int inStock = rs.getInt("InStock");
                double price = rs.getDouble("Price");
                String imagePath = rs.getString("ImagePath");
                list.add(new Product(productId, name, description, inStock, price, imagePath));
            }
            return list;
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return null;
    }

    public Product getProductbyId(int id) {
        Product p = null;
        String query = "SELECT * FROM Products WHERE ProductID = ? ";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt(1);
                String name = rs.getString(2);
                String description = rs.getString(3);
                int inStock = rs.getInt(4);
                double price = rs.getDouble(5);
                String imagePath = rs.getString(6);
                p = new Product(productId, name, description, inStock, price, imagePath);
            }
            return p;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public Games getGamebyId(int id) {
        Games p = null;
        String query = "SELECT * FROM Games WHERE ProductID = ? ";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt(1);
                String releaseDate = rs.getString(2);
                String publisher = rs.getString(3);
                String dev = rs.getString(4);
                int languageId = rs.getInt(5);
                int categoryId = rs.getInt(6);
                String subcateId = rs.getString(7);
                String rate = rs.getString(8);
                p = new Games(productId, releaseDate, publisher, dev, languageId, categoryId, subcateId, rate);
            }
            return p;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Category getCategoryById(int id) {
        Category p = null;
        String query = "select pc.CategoryID, pc.Name from ProductCategories pc join Games ga on pc.CategoryID = ga.CategoryID where ga.ProductID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int subcateId = rs.getInt(1);
                String name = rs.getString(2);
                p = new Category(subcateId, name);
            }
            return p;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Subcategory getSubCategoryById(int id) {
        Subcategory p = null;
        String query = "select pc.SubcategoryID, pc.Name from ProductSubcategories pc join Games ga on pc.SubcategoryID = ga.SubcategoryID where ga.ProductID = ? ";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String cateId = rs.getString(1);
                String name = rs.getString(2);
                p = new Subcategory(cateId, name);
            }
            return p;
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class
                    .getName()).log(Level.SEVERE, null, ex);

        }
        return null;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.myFilter(1, 100, 2, 2);
        System.out.println(list);
    }

    public List<Product> myFilter(int minPrice, int maxPrice, int language, int category) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * "
                + "FROM Products "
                + "JOIN Games ON Products.ProductID = Games.ProductID "
                + "WHERE Products.Price BETWEEN ? AND ? "
                + "AND Games.LanguageID = ? "
                + "AND Games.CategoryID = ?";

        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, minPrice);
            ps.setInt(2, maxPrice);
            ps.setInt(3, language);
            ps.setInt(4, category);
            rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("ProductId");
                String name = rs.getString("Name");
                String description = rs.getString("Description");
                int inStock = rs.getInt("InStock");
                double price = rs.getDouble("Price");
                String imagePath = rs.getString("ImagePath");
                list.add(new Product(productId, name, description, inStock, price, imagePath));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Language getLanguageById(int id) {
        Language p = null;
        String query = "select  la.LanguageID , la.[Language] from Language la join Games ga on la.LanguageID = ga.LanguageID where ga.ProductID = ? ";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int langId = rs.getInt(1);
                String name = rs.getString(2);
                p = new Language(langId, name);
            }
            return p;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Games> getallGames() {
        List<Games> list = new ArrayList<>();
        String query = "select * from Games";
        try {
            DBConnect db = new DBConnect();
            con = db.connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt(1);
                String releaseDate = rs.getString(2);
                String publisher = rs.getString(3);
                String developer = rs.getString(4);
                int languageId = rs.getInt(5);
                int categoryId = rs.getInt(6);
                String subCategoryId = rs.getString(7);
                String rate = rs.getString(8);
                list.add(new Games(productId, releaseDate, publisher, developer, languageId, categoryId, subCategoryId, rate));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Category> getallCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from ProductCategories";
        try {
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int categoryId = rs.getInt(1);
                String category = rs.getString(2);
                list.add(new Category(categoryId, category));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Subcategory> getallSubCategory() {
        List<Subcategory> list = new ArrayList<>();
        String query = "select * from ProductSubcategories";
        try {
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                String subCategoryId = rs.getString(1);
                String subCategory = rs.getString(2);
                list.add(new Subcategory(subCategoryId, subCategory));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Language> getallLanguage() {
        List<Language> list = new ArrayList<>();
        String query = "select * from Language";
        try {
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int languageId = rs.getInt(1);
                String language = rs.getString(2);
                list.add(new Language(languageId, language));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public void updateProduct(int id, String name, String desc, int instock, double price) {
        String query = "UPDATE [dbo].[Products]\n"
                + "   SET [Name] = ?\n"
                + "      ,[Description] = ?\n"
                + "      ,[InStock] = ?\n"
                + "      ,[Price] = ?\n"
                + " WHERE ProductId = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, desc);
            ps.setInt(3, instock);
            ps.setDouble(4, price);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateGame(int id, String date, String publisher, String dev, int langId, int cateId, String subcateId) {
        String query = "UPDATE [dbo].[Games]\n"
                + "   SET [ReleaseDate] = ?\n"
                + "      ,[Publisher] = ?\n"
                + "      ,[Developer] = ?\n"
                + "      ,[LanguageID] = ?\n"
                + "      ,[CategoryID] = ?\n"
                + "      ,[SubcategoryID] = ?\n"
                + " WHERE ProductID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, date);
            ps.setString(2, publisher);
            ps.setString(3, dev);
            ps.setInt(4, langId);
            ps.setInt(5, cateId);
            ps.setString(6, subcateId);
            ps.setInt(7, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(int id) {
        String query = "DELETE FROM [dbo].[Games]\n"
                + "      WHERE ProductID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
        query = "DELETE FROM [dbo].[Products]\n"
                + "      WHERE ProductID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public boolean addProduct(int id, String name, String desc, int instock, double price, String image) {
        String query = "INSERT INTO [dbo].[Products] ([ProductID],[Name] ,[Description] ,[InStock] ,[Price] ,[ImagePath]) VALUES (? ,? ,? ,? ,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setString(3, desc);
            ps.setInt(4, instock);
            ps.setDouble(5, price);
            ps.setString(6, image);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean addGame(int id, String date, String publisher, String dev, int langId, int cateId, String subcateId) {
        String query = "INSERT INTO [dbo].[Games] ([ProductID] ,[ReleaseDate] ,[Publisher] ,[Developer] ,[LanguageID] ,[CategoryID] ,[SubcategoryID] ,[Rate]) VALUES (? ,? ,? ,? ,? ,? ,? ,?) ";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, date);
            ps.setString(3, publisher);
            ps.setString(4, dev);
            ps.setInt(5, langId);
            ps.setInt(6, cateId);
            ps.setString(7, subcateId);
            ps.setDouble(8, 4.3);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}
