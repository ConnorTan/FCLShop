package cn.fcl.cart.vo;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 购物车对象
 * 
 * @author YU
 * 
 */

public class Cart implements Serializable{
	// 购物项集合：Map的key就是商品pid，value：购物项
	private Map<Integer, CartItem> map = new LinkedHashMap<Integer, CartItem>();

	//Cart对象中有一个叫cartItems属性.
	public Collection<CartItem> getCartItems() {
		return map.values();
	}

	// 购物总计：
	private double total;

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	// 将购物项添加到购物车
	public void addCart(CartItem cartItem) {
		// 获得商品id
		Integer pid = cartItem.getProduct().getPid();
		// 判断购物车中是否已经存在在购物车中
		if (map.containsKey(pid)) {
			CartItem cartItem2 = map.get(pid);
			cartItem2.setCount(cartItem2.getCount() + cartItem.getCount());
		} else {
			map.put(pid, cartItem);
		}
		// 设置总计的值
		total += cartItem.getSubtotal();

	}

	// 从购物车移除购物项
	public void removeCart(Integer pid) {
		CartItem cartItem = map.remove(pid);
		total -= cartItem.getSubtotal();
	}

	// 清空购物车:
	public void clearCart() {
		map.clear();
		total = 0;
	}

}
