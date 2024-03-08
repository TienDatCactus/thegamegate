/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.Date;

/**
 *
 * @author Tiến_Đạt
 */
public class UserPayments {

    int userId;
    String cardNum;
    Date expire;

    public UserPayments() {
    }

    public UserPayments(int userId, String cardNum, Date expire) {
        this.userId = userId;
        this.cardNum = cardNum;
        this.expire = expire;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getCardNum() {
        return cardNum;
    }

    public void setCardNum(String cardNum) {
        this.cardNum = cardNum;
    }

    public Date getExpire() {
        return expire;
    }

    public void setExpire(Date expire) {
        this.expire = expire;
    }

    @Override
    public String toString() {
        return "UserPayments{" + "userId=" + userId + ", cardNum=" + cardNum + ", expire=" + expire + '}';
    }

}
