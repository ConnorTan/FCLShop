package cn.fcl.order.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.fcl.order.vo.Order;
import cn.fcl.utils.PageHibernateCallback;

/**
 * ����ģ��Dao��Ĵ���
 * 
 * @author YU
 * 
 */
public class OrderDao extends HibernateDaoSupport {

	// DAO��ı��涩���ķ���
	public void save(Order order) {
		this.getHibernateTemplate().save(order);
	}

	// DAO���ҵĶ�������ͳ��
	public Integer findByCountid(Integer id) {
		String hql = "select count(*) from Order o where o.user.id = ?";
		List<Long> list = this.getHibernateTemplate().find(hql, id);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return null;
	}

	public List<Order> findByPageid(Integer id, Integer begin, Integer limit) {
		String hql = "from Order o where o.user.id = ? order by ordertime desc";
		List<Order> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Order>(hql, new Object[] { id },
						begin, limit));

		return list;
	}
}
