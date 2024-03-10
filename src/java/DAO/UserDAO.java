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

    PreparedStatement ps = null;
    UsersAccount ua = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public UserPayments getUserPaymentsById(int id) {
        String query = "SELECT * FROM UserPayments WHERE UserID = ? ";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int userId = rs.getInt(1);
                String cardNumber = rs.getString(2);
                Date expireDate = rs.getDate(3);
                return new UserPayments(userId, cardNumber, expireDate);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<UserPayments> getUserPayments() {
        List<UserPayments> list = new ArrayList<>();
        String query = "SELECT * FROM UserPayments";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String cardNumber = rs.getString(2);
                Date expireDate = rs.getDate(3);
                list.add(new UserPayments(id, cardNumber, expireDate));
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Users getUserByEmail(String email) {
        Users p = null;
        String query = "SELECT * FROM Users WHERE UserID = (SELECT UserID FROM UsersAccount WHERE Email = ? )";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String firstName = rs.getString(2);
                String lastName = rs.getString(3);
                String telephone = rs.getString(4);
                String address = rs.getString(5);
                p = new Users(id, firstName, lastName, telephone, address);
            }
            return p;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Users> getUserList() {
        List<Users> list = new ArrayList<>();
        String query = "SELECT * FROM Users";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String firstName = rs.getString(2);
                String lastName = rs.getString(3);
                String telephone = rs.getString(4);
                String address = rs.getString(5);
                list.add(new Users(id, firstName, lastName, telephone, address));
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Users getUserById(int userId) {
        String query = "SELECT * FROM Users WHERE UserID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String firstName = rs.getString(2);
                String lastName = rs.getString(3);
                String telephone = rs.getString(4);
                String address = rs.getString(5);
                return new Users(id, firstName, lastName, telephone, address);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getUserIdByEmail(String email) {
        String query = "SELECT UserID FROM UsersAccount WHERE Email = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int userId = rs.getInt(1);
                return userId;
            } else {
                return -1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return -1;
    }

    public void userAccountUpdate(UsersAccount user) {
        String query = " UPDATE [dbo].[UsersAccount]\n"
                + "   SET [Email] = ?\n"
                + "      ,[Password] = ?\n"
                + " WHERE UserID = ?";
        try{
            PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());
            ps.setInt(3, user.getUserId());
            ps.execute();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public void userUpdate(Users user) {
        String query = "UPDATE [dbo].[Users]\n"
                + "   SET [FirstName] = ?\n"
                + "      ,[LastName] = ?\n"
                + "      ,[Telephone] = ?\n"
                + "      ,[Address] = ?\n"
                + " WHERE UserID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(5, user.getUserId());
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getTelephone());
            ps.setString(4, user.getAddress());
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Users us = new Users(5, "Danny", "Brown", "00122231231", "21st Everdale");
        UserDAO dao = new UserDAO();
        dao.userUpdate(us);
    }
}
