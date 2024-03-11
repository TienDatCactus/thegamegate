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

    public boolean checkSignUpAccount(String email, String password) {
        if (userExisted(email)) {
            return false;
        }
        String query = "INSERT INTO [dbo].[UsersAccount]\n"
                + "           ([Email]\n"
                + "           ,[Password])\n"
                + "     VALUES\n"
                + "           (? , ?)";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            boolean signedUp = ps.execute();
            if (signedUp) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean userExisted(String email) {
        try {
            String query = "select * from UsersAccounts where Email = ?";
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
