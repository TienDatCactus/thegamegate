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
public class LanguageDAO {

    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
     */
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Language> getallLanguage() {
        List<Language> list = new ArrayList<>();
        String query = "select * from Language";
        try {
            DBConnect db = new DBConnect();
            con = db.connection;
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

    public static void main(String[] args) {
        LanguageDAO dao = new LanguageDAO();
        List<Language> list = dao.getallLanguage();
        for (Language o : list) {
            System.out.println(o);
        }
    }
}
