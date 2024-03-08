/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Tiến_Đạt
 */
public class Cart {
    int cartId;
    int total;
    int shippingFee;

    public Cart(int cartId, int total, int shippingFee) {
        this.cartId = cartId;
        this.total = total;
        this.shippingFee = shippingFee;
    }

    public Cart() {
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(int shippingFee) {
        this.shippingFee = shippingFee;
    }

    @Override
    public String toString() {
        return "Cart{" + "cartId=" + cartId + ", total=" + total + ", shippingFee=" + shippingFee + '}';
    }
    
}
