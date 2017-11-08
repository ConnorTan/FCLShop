package cn.fcl.product.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.fcl.product.vo.Product;
import cn.fcl.utils.PageHibernateCallback;

/**
 * 商品持久层
 * 
 * @author YU
 * 
 */
public class ProductDao extends HibernateDaoSupport {

	// 首页上热门商品的查询
	public List<Product> findHot() {
		// 使用离线条件查询
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// 查询热门商品，条件是is_host = 1
		criteria.add(Restrictions.eq("is_host", 1));
		// 倒叙排序
		criteria.addOrder(Order.desc("pdate"));
		// 执行查询
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria, 0, 8);
		return list;
	}

	
	//根据商品ID查询商品
	public  Product findByPid(Integer pid) {
		return this.getHibernateTemplate().get(Product.class, pid);
	}

	//DAO层统计商品个数的方法
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

	//保存商品
	public void save(Product product) {
		System.out.println(product.toString());
		this.getHibernateTemplate().save(product);
	}

	//删除商品
	public void delete(Product product) {
		this.getHibernateTemplate().delete(product);
	}

	//修改商品
	public void update(Product product) {
		this.getHibernateTemplate().update(product);
	}
}
