/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.UserPayments;
import Models.Users;
import Models.UsersAccount;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;
import java.sql.ResultSet;

public class UserDAO {

    Connection con = null;
    PreparedStatement ps = null;
    UsersAccount ua = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();

    public List<UserPayments> getUserPayments(String email) {
        List<UserPayments> userPayments = new ArrayList<>();
        String query = "SELECT * FROM UserPayments WHERE UserID = (SELECT UserID FROM UsersAccount WHERE Email = ?)";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, email);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        int userId = rs.getInt("UserID");
                        String cardNumber = rs.getString("CardNumber");
                        Date expireDate = rs.getDate("ExpireDate");
                        userPayments.add(new UserPayments(userId, cardNumber, expireDate));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return userPayments;
    }

    public Users getUserById(int userId) {
        String query = "SELECT * FROM Users WHERE UserID = ?";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setInt(1, userId);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        int id = rs.getInt(1);
                        String firstName = rs.getString(2);
                        String lastName = rs.getString(3);
                        String telephone = rs.getString(4);
                        String address = rs.getString(5);
                        Users user = new Users(id, firstName, lastName, telephone, address);
                        return user;
                    } else {
                        return null;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getUserIdByEmail(String email) {
        String query = "SELECT UserID FROM UsersAccount WHERE Email = ?";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, email);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        int userId = rs.getInt(1);
                        return userId;
                    } else {
                        return -1;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public static void main(String[] args) {
        String email = "user1032@example.com";
        UserDAO dao = new UserDAO();
        List<UserPayments> us = dao.getUserPayments(email);
        for (UserPayments ua : us) {
            System.out.println(ua);
        }
    }
}
