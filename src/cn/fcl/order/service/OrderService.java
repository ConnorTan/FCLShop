package cn.fcl.order.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.fcl.order.dao.OrderDao;
import cn.fcl.order.vo.Order;
import cn.fcl.utils.PageBean;

/**
 * ����ģ�飺ҵ������
 * @author YU
 *
 */
@Transactional
public class OrderService {
	private OrderDao orderDao;

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	//���涩����ҵ������
	public void save(Order order) {
		orderDao.save(order);
	}

	public PageBean<Order> findByPageid(Integer id, Integer page) {
		PageBean<Order> pageBean =new PageBean<Order>();
		//���õ�ǰҳ����
		pageBean.setPage(page);
		//����ÿҳ����ʾ��¼��
		Integer limit = 5;
		pageBean.setLimit(limit);
		//�����ܼ�¼��
		Integer totalCount = null;
		totalCount = orderDao.findByCountid(id);
		pageBean.setTotalCount(totalCount);
		//������ҳ��
		Integer totalPage=null;
		if(totalCount % limit ==0){
			totalPage = totalCount / limit;
		}else{
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		//����ÿҳ��ʾ���ݼ���
		Integer begin = (page-1)*limit;
		List<Order> list = orderDao.findByPageid(id,begin,limit);
		pageBean.setList(list);
		return pageBean;
	}

	
	
}
