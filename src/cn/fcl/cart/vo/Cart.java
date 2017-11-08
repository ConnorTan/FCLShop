package cn.fcl.cart.vo;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * ���ﳵ����
 * 
 * @author YU
 * 
 */

public class Cart implements Serializable{
	// ������ϣ�Map��key������Ʒpid��value��������
	private Map<Integer, CartItem> map = new LinkedHashMap<Integer, CartItem>();

	//Cart��������һ����cartItems����.
	public Collection<CartItem> getCartItems() {
		return map.values();
	}

	// �����ܼƣ�
	private double total;

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	// ����������ӵ����ﳵ
	public void addCart(CartItem cartItem) {
		// �����Ʒid
		Integer pid = cartItem.getProduct().getPid();
		// �жϹ��ﳵ���Ƿ��Ѿ������ڹ��ﳵ��
		if (map.containsKey(pid)) {
			CartItem cartItem2 = map.get(pid);
			cartItem2.setCount(cartItem2.getCount() + cartItem.getCount());
		} else {
			map.put(pid, cartItem);
		}
		// �����ܼƵ�ֵ
		total += cartItem.getSubtotal();

	}

	// �ӹ��ﳵ�Ƴ�������
	public void removeCart(Integer pid) {
		CartItem cartItem = map.remove(pid);
		total -= cartItem.getSubtotal();
	}

	// ��չ��ﳵ:
	public void clearCart() {
		map.clear();
		total = 0;
	}

}
