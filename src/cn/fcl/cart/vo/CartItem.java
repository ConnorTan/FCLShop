package cn.fcl.cart.vo;

import cn.fcl.product.vo.Product;

public class CartItem {
	private Product product;	// 商品的单价
	private int count;			// 商品数量
	private double subtotal;	// 小计

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	//小计自动计算
	public double getSubtotal() {
		return count * product.getMarket_price();
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

}
