package cn.fcl.product.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.fcl.product.dao.ProductDao;
import cn.fcl.product.vo.Product;
import cn.fcl.utils.PageBean;

@Transactional
public class ProductService {
	private ProductDao productDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	// 首页上热门商品查询
	public List<Product> findHot() {
		return productDao.findHot();
	}

	// 根据商品ID查询商品
	public Product findByPid(Integer pid) {
		return productDao.findByPid(pid);
	}

	public PageBean<Product> findByPage(Integer page) {
		PageBean<Product> pageBean = new PageBean<Product>();
		pageBean.setPage(page);// 设置当前的页数
		int limit = 10;// 设置每页显示记录数
		pageBean.setLimit(limit);
		int totalCount = productDao.findCount(); // 设置总记录数
		pageBean.setTotalPage(totalCount);
		int totalPage = 0;// 设置总页数:
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		int begin = (page - 1) * limit;// 设置显示到页面的数据的集合
		List<Product> list = productDao.findByPage(begin, limit);
		pageBean.setList(list);
		return pageBean;
	}

	// 业务层保存商品的方法
	public void save(Product product) {
		productDao.save(product);
	}

	// 业务层删除商品的方法
	public void delete(Product product) {
		productDao.delete(product);
	}

	// 业务层修改商品
	public void update(Product product) {
		productDao.update(product);

	}
}
