/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.UsersAccount;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Tiến_Đạt
 */
public class SignUpDAO {

    PreparedStatement ps = null;
    UsersAccount ua = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public boolean checkSignUpAccount(int id,String email, String password) {
        if (userExisted(email)) {
            return false;
        }
        String query = "INSERT INTO [dbo].[UsersAccount] ([UserID] ,[Email] ,[Password]) VALUES (? ,? ,?)";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    public static void main(String[] args) {
        SignUpDAO dao = new SignUpDAO();
    }
    public boolean addUser(int id,String fname, String lname, String tele, String add) {
        String query = "INSERT INTO [dbo].[Users] ([UserID] ,[FirstName] ,[LastName] ,[Telephone] ,[Address]) VALUES (? ,? ,? ,? ,?)";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,id);
            ps.setString(2, fname);
            ps.setString(3, lname);
            ps.setString(4, tele);
            ps.setString(5, add);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean userExisted(String email) {
        String query = "select * from UsersAccount where Email = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
