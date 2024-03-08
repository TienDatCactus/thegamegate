/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Tiến_Đạt
 */
public class CategoryDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Category> getallCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from ProductCategories";
        try {
            DBConnect db = new DBConnect();
            con = db.connection;
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

    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        List<Category> list = dao.getallCategory();
        for (Category o : list) {
            System.out.println(o);
        }
    }
}
