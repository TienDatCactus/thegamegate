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

    public UserPayments getUserPaymentsById(int id) {
        String query = "SELECT * FROM UserPayments WHERE UserID = ? ";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setInt(1, id);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        int userId = rs.getInt(1);
                        String cardNumber = rs.getString(2);
                        Date expireDate = rs.getDate(3);
                        return new UserPayments(userId, cardNumber, expireDate);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<UserPayments> getUserPayments() {
        List<UserPayments> userPayments = new ArrayList<>();
        String query = "SELECT * FROM UserPayments";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        int id = rs.getInt(1);
                        String cardNumber = rs.getString(2);
                        Date expireDate = rs.getDate(3);
                        userPayments.add(new UserPayments(id, cardNumber, expireDate));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return userPayments;
    }

    public List<Users> getUserListByEmail(String email) {
        List<Users> list = new ArrayList<>();
        String query = "SELECT * FROM Users WHERE UserID = (SELECT UserID FROM UsersAccount WHERE Email = ? )";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, email);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        int id = rs.getInt(1);
                        String firstName = rs.getString(2);
                        String lastName = rs.getString(3);
                        String telephone = rs.getString(4);
                        String address = rs.getString(5);
                        list.add(new Users(id, firstName, lastName, telephone, address));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Users> getUserList() {
        List<Users> list = new ArrayList<>();
        String query = "SELECT * FROM Users";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        int id = rs.getInt(1);
                        String firstName = rs.getString(2);
                        String lastName = rs.getString(3);
                        String telephone = rs.getString(4);
                        String address = rs.getString(5);
                        list.add(new Users(id, firstName, lastName, telephone, address));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Users getUserById(int userId) {
        String query = "SELECT * FROM Users WHERE UserID = ?";
        try (Connection con = db.connection) {
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setInt(1, userId);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        int id = rs.getInt(1);
                        String firstName = rs.getString(2);
                        String lastName = rs.getString(3);
                        String telephone = rs.getString(4);
                        String address = rs.getString(5);
                        return new Users(id, firstName, lastName, telephone, address);
                    }
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
        String email = "user451@example.com";
        UserDAO dao = new UserDAO();
        List<Users> us = dao.getUserListByEmail(email);
        for (Users ua : us) {
            System.out.println(ua);
        }
    }
}
