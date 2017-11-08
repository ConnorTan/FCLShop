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
 * ���������Action
 */
public class OrderAction extends ActionSupport implements ModelDriven<Order> {

	// ģ������ʹ�õĶ���
	private Order order = new Order();
	// ע��OrderService
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

	// ���ɶ����ķ���
	public String save() {
		order.setOrdertime(new Date());
		order.setState(1); // 1.������ 2.�Ѿ����� 3.�Ѿ���������û��ȷ���ջ� 4.�������
		// ��ȡ���ﳵ�е���Ϣ
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");
		if (cart == null) {
			this.addActionError("��,�㻹û�й���!,����ȥ����!");
			return "msg";
		}
		order.setTotal(cart.getTotal());
		// ���ö����еĶ�����:
		for (CartItem cartItem : cart.getCartItems()) {
			OrderItem orderItem = new OrderItem();
			orderItem.setCount(cartItem.getCount());
			orderItem.setSubtotal(cartItem.getSubtotal());
			orderItem.setProduct(cartItem.getProduct());
			orderItem.setOrder(order);

			order.getOrderItems().add(orderItem);
		}
		// ���ö��������û�:
		User exisUser = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("existUser");
		if (exisUser == null) {
			this.addActionError("��!�㻹û�е�¼!����ȥ��¼��");
			return "login";
		}
		order.setUser(exisUser);
		orderService.save(order);

		// ������������ʾ��ҳ����
		// ͨ��ֵջ�ķ�ʽ��ʾ����ΪOrder��ʾ�Ķ������ģ��������ʹ�õĶ���

		return "saveSuccess";
	}

	// �ҵĶ�����ѯ
	public String findByid() {
		// �����û�id��ѯ
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("exisUser");
		PageBean<Order> pageBean = orderService.findByPageid(user.getId(),
				page);
		//����ҳ������ʾ��ҳ����
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByidSuccess";
	}
}
