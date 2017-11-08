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
	// 接收count
	private Integer count;
	// 注入商品的service;
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

	// 将购物项添加到购物车
	public String addCart() {
		// 封装一个CartItem对象
		CartItem cartItem = new CartItem();

		System.out.println(count);
		// 设置数量;
		cartItem.setCount(count);
		// 根据pid进行查询商品
		Product product = productService.findByPid(pid);
		// 设置商品;
		cartItem.setProduct(product);
		// 将购物项添加到购物车
		// 购物车存在session中
		Cart cart = getCart();
		cart.addCart(cartItem);
		return "addCart";
	}

	// 清空购物车的执行方法
	public String clearCart() {
		// 获得购物车对象
		Cart cart = getCart();
		cart.clearCart();
		return "clearCart";
	}

	// 移除购物项的方法
	public String removeCart() {
		Cart cart = getCart();
		cart.removeCart(pid);
		return "removeCart";
	}
	
	//点击购物车跳转到购物车页面
	public String myCart(){
		return "myCart";
	}
	
	
	// 获取购物车的方法：从session中获得购物车
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
