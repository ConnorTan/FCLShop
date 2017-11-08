package cn.fcl.product.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.fcl.product.vo.Product;
import cn.fcl.utils.PageHibernateCallback;

/**
 * ��Ʒ�־ò�
 * 
 * @author YU
 * 
 */
public class ProductDao extends HibernateDaoSupport {

	// ��ҳ��������Ʒ�Ĳ�ѯ
	public List<Product> findHot() {
		// ʹ������������ѯ
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// ��ѯ������Ʒ��������is_host = 1
		criteria.add(Restrictions.eq("is_host", 1));
		// ��������
		criteria.addOrder(Order.desc("pdate"));
		// ִ�в�ѯ
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria, 0, 8);
		return list;
	}

	
	//������ƷID��ѯ��Ʒ
	public  Product findByPid(Integer pid) {
		return this.getHibernateTemplate().get(Product.class, pid);
	}

	//DAO��ͳ����Ʒ�����ķ���
	public int findCount() {
		String hql="select count(*) from Product";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list!=null && list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}
	public List<Product> findByPage(int begin,int limit) {
		String hql="from Product order by pdate desc";
		List<Product> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, null, begin, limit));
		if(list!=null && list.size()>0){
			return list;
		}
		return null;
	}

	//������Ʒ
	public void save(Product product) {
		System.out.println(product.toString());
		this.getHibernateTemplate().save(product);
	}

	//ɾ����Ʒ
	public void delete(Product product) {
		this.getHibernateTemplate().delete(product);
	}

	//�޸���Ʒ
	public void update(Product product) {
		this.getHibernateTemplate().update(product);
	}
}
