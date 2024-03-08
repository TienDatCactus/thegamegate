/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.*;
import java.sql.Date;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class GameDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Games> getallGames()  {
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

    public static void main(String[] args)  {
        GameDAO dao  = new GameDAO();
        List<Games> list = dao.getallGames();
        for (Games o : list) {
            System.out.println(o);
        }
    }
}

