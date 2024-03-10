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
import org.apache.tomcat.dbcp.dbcp2.PoolingConnection;

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
                int categoryId = rs.getInt("CategoryId");
                int inStock = rs.getInt("InStock");
                double price = rs.getDouble("Price");
                String imagePath = rs.getString("ImagePath");
                list.add(new Product(productId, name, description, categoryId, inStock, price, imagePath));
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
                int categoryId = rs.getInt(4);
                int inStock = rs.getInt(5);
                double price = rs.getDouble(6);
                String imagePath = rs.getString(7);
                p = new Product(productId, name, description, categoryId, inStock, price, imagePath);
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
                Date releaseDate = rs.getDate(2);
                String publisher = rs.getString(3);
                String dev = rs.getString(4);
                int languageId = rs.getInt(5);
                int categoryId = rs.getInt(6);
                int subcateId = rs.getInt(7);
                float rate = rs.getFloat(8);
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
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                float cateId = rs.getFloat(1);
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
                Date releaseDate = rs.getDate(2);
                String publisher = rs.getString(3);
                String developer = rs.getString(4);
                int languageId = rs.getInt(5);
                int categoryId = rs.getInt(6);
                int subCategoryId = rs.getInt(7);
                float rate = rs.getFloat(8);
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
                float subCategoryId = rs.getFloat(1);
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

    public void updateProduct(Product prod) {
        String query = "UPDATE [dbo].[Products]\n"
                + "   SET [Name] = ?\n"
                + "      ,[Description] = ?\n"
                + "      ,[CategoryID] = ?\n"
                + "      ,[InStock] = ?\n"
                + "      ,[Price] = ?\n"
                + "      ,[ImagePath] = ?\n"
                + " WHERE ProductId?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, prod.getName());
            ps.setString(2, prod.getDescription());
            ps.setInt(3, prod.getCategoryId());
            ps.setInt(4, prod.getInStock());
            ps.setDouble(5, prod.getPrice());
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateGame(Games game) {
        String query = "UPDATE [dbo].[Games]\n"
                + "   SET [ProductID] = ?\n"
                + "      ,[ReleaseDate] = ?\n"
                + "      ,[Publisher] = ?\n"
                + "      ,[Developer] = ?\n"
                + "      ,[LanguageID] = ?\n"
                + "      ,[CategoryID] = ?\n"
                + "      ,[SubcategoryID] = ?\n"
                + "      ,[Rate] = ?\n"
                + " WHERE ProducID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, game.getProductId());
            ps.setDate(2, game.getRealeaseDate());
            ps.setString(3, game.getPublisher());
            ps.setString(4, game.getDeveloper());
            ps.setInt(5, game.getCategoryId());
            ps.setFloat(6, game.getSubCategoryId());
            ps.setFloat(7, game.getRate());
            ps.setInt(7 , game.getProductId());
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        List<Language> pd = dao.getallLanguage();
        System.out.println(pd);
    }
}
