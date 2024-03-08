package DAO;

import Models.UsersAccount;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import DAO.DBConnect;

/**
 *
 * @author Tiến_Đạt
 */
public class LoginDAO {

    Connection con = null;
    PreparedStatement ps = null;
    UsersAccount ua = null;

    public UsersAccount checkLogin(String email, String password) {
        try {
            String query = "SELECT * FROM UsersAccount WHERE Email=? AND Password=? ";
            DBConnect db = new DBConnect();
            con = db.connection;
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    ua = new UsersAccount(rs.getString("Email"), rs.getString("Password"));
                    return ua;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
