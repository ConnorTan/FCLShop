package cn.fcl.order.action;

import java.util.Date;

import org.apache.struts2.ServletActionContext;

import cn.fcl.cart.vo.Cart;
import cn.fcl.cart.vo.CartItem;
import cn.fcl.order.service.OrderService;
import cn.fcl.order.vo.Order;
import cn.fcl.order.vo.OrderItem;
import cn.fcl.user.vo.User;
import cn.fcl.utils.PageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 订单管理的Action
 */
public class OrderAction extends ActionSupport implements ModelDriven<Order> {

	// 模型驱动使用的对象
	private Order order = new Order();
	// 注入OrderService
	private OrderService orderService;

	private Integer page;

	public void setPage(Integer page) {
		this.page = page;
	}

	public Order getModel() {
		return order;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	// 生成订单的方法
	public String save() {
		order.setOrdertime(new Date());
		order.setState(1); // 1.来付款 2.已经付款 3.已经发货但是没有确认收货 4.交易完成
		// 获取购物车中的信息
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");
		if (cart == null) {
			this.addActionError("亲,你还没有购物!,请先去购物!");
			return "msg";
		}
		order.setTotal(cart.getTotal());
		// 设置订单中的订单项:
		for (CartItem cartItem : cart.getCartItems()) {
			OrderItem orderItem = new OrderItem();
			orderItem.setCount(cartItem.getCount());
			orderItem.setSubtotal(cartItem.getSubtotal());
			orderItem.setProduct(cartItem.getProduct());
			orderItem.setOrder(order);

			order.getOrderItems().add(orderItem);
		}
		// 设置订单所属用户:
		User exisUser = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("existUser");
		if (exisUser == null) {
			this.addActionError("亲!你还没有登录!请先去登录！");
			return "login";
		}
		order.setUser(exisUser);
		orderService.save(order);

		// 将订单对象显示到页面上
		// 通过值栈的方式显示：因为Order显示的对象就是模型驱动的使用的对象

		return "saveSuccess";
	}

	// 我的订单查询
	public String findByid() {
		// 根据用户id查询
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("exisUser");
		PageBean<Order> pageBean = orderService.findByPageid(user.getId(),
				page);
		//将分页数据显示到页面上
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByidSuccess";
	}
}
