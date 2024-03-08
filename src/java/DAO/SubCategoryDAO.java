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
public class SubCategoryDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Subcategory> getallSubCategory() {
        List<Subcategory> list = new ArrayList<>();
        String query = "select * from ProductSubcategories";
        try {
            DBConnect db = new DBConnect();
            con = db.connection;
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

    public static void main(String[] args) {
        SubCategoryDAO dao = new  SubCategoryDAO();
        List<Subcategory> list = dao.getallSubCategory();
        for (Subcategory o : list) {
            System.out.println(o);
        }
    }
}
