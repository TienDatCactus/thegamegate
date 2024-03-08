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

    Connection con = null;
    PreparedStatement ps = null;
    UsersAccount ua = null;
    ResultSet rs = null;

    public boolean checkSignUp(String firstname, String lastname, int telephone, String address, String email, String password) {
        if (userExisted(email)) {
            return false;
        }
        try {
            String query = "INSERT INTO UsersAccount (Email, Password) VALUES (?, ?)";
            DBConnect db = new DBConnect();
            con = db.connection;
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            int signedUp = ps.executeUpdate();

            String query2 = "INSERT INTO Users (FirstName, LastName, Telephone, Address) VALUES (?, ?, ?, ?)";
            ps = con.prepareStatement(query2);
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setInt(3, telephone);
            ps.setString(4, address);
            int usersInserted = ps.executeUpdate();

            if (signedUp > 0 && usersInserted > 0) {
                con.commit();
                return true;
            } else {
                con.rollback();
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
            DBConnect db = new DBConnect();
            con = db.connection;
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
