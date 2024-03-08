/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Tiến_Đạt
 */
public class CartDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Cart> getallCart() {
        List<Cart> list = new ArrayList<>();
        String query = "select * from Carts";
        try {
            DBConnect db = new DBConnect();
            con = db.connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int cartId = rs.getInt(1);
                int total = rs.getInt(2);
                int shippingFee = rs.getInt(3);
                list.add(new Cart(cartId, total, shippingFee));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public static void main(String[] args) {
        CartDAO dao = new CartDAO();
        List<Cart> list = dao.getallCart();
        for (Cart o : list) {
            System.out.println(o);
        }
    }
}

