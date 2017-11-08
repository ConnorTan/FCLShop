package cn.fcl.cart.action;

import org.apache.struts2.ServletActionContext;

import cn.fcl.cart.vo.Cart;
import cn.fcl.cart.vo.CartItem;
import cn.fcl.product.service.ProductService;
import cn.fcl.product.vo.Product;

import com.opensymphony.xwork2.ActionSupport;

public class CartAction extends ActionSupport {
	// pid
	private Integer pid;
	// ����count
	private Integer count;
	// ע����Ʒ��service;
	private ProductService productService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	// ����������ӵ����ﳵ
	public String addCart() {
		// ��װһ��CartItem����
		CartItem cartItem = new CartItem();

		System.out.println(count);
		// ��������;
		cartItem.setCount(count);
		// ����pid���в�ѯ��Ʒ
		Product product = productService.findByPid(pid);
		// ������Ʒ;
		cartItem.setProduct(product);
		// ����������ӵ����ﳵ
		// ���ﳵ����session��
		Cart cart = getCart();
		cart.addCart(cartItem);
		return "addCart";
	}

	// ��չ��ﳵ��ִ�з���
	public String clearCart() {
		// ��ù��ﳵ����
		Cart cart = getCart();
		cart.clearCart();
		return "clearCart";
	}

	// �Ƴ�������ķ���
	public String removeCart() {
		Cart cart = getCart();
		cart.removeCart(pid);
		return "removeCart";
	}
	
	//������ﳵ��ת�����ﳵҳ��
	public String myCart(){
		return "myCart";
	}
	
	
	// ��ȡ���ﳵ�ķ�������session�л�ù��ﳵ
	private Cart getCart() {
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			ServletActionContext.getRequest().getSession()
					.setAttribute("cart", cart);
		}
		return cart;
	}

}
