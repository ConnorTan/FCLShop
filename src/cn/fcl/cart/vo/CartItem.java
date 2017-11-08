package cn.fcl.cart.vo;

import cn.fcl.product.vo.Product;

public class CartItem {
	private Product product;	// ��Ʒ�ĵ���
	private int count;			// ��Ʒ����
	private double subtotal;	// С��

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
	
	//С���Զ�����
	public double getSubtotal() {
		return count * product.getMarket_price();
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

}
