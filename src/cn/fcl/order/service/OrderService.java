package cn.fcl.order.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.fcl.order.dao.OrderDao;
import cn.fcl.order.vo.Order;
import cn.fcl.utils.PageBean;

/**
 * 订单模块：业务层代码
 * @author YU
 *
 */
@Transactional
public class OrderService {
	private OrderDao orderDao;

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	//保存订单的业务层代码
	public void save(Order order) {
		orderDao.save(order);
	}

	public PageBean<Order> findByPageid(Integer id, Integer page) {
		PageBean<Order> pageBean =new PageBean<Order>();
		//设置当前页数：
		pageBean.setPage(page);
		//设置每页的显示记录数
		Integer limit = 5;
		pageBean.setLimit(limit);
		//设置总记录数
		Integer totalCount = null;
		totalCount = orderDao.findByCountid(id);
		pageBean.setTotalCount(totalCount);
		//设置总页数
		Integer totalPage=null;
		if(totalCount % limit ==0){
			totalPage = totalCount / limit;
		}else{
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		//设置每页显示数据集合
		Integer begin = (page-1)*limit;
		List<Order> list = orderDao.findByPageid(id,begin,limit);
		pageBean.setList(list);
		return pageBean;
	}

	
	
}
