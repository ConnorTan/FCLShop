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

	// ��ҳ��������Ʒ��ѯ
	public List<Product> findHot() {
		return productDao.findHot();
	}

	// ������ƷID��ѯ��Ʒ
	public Product findByPid(Integer pid) {
		return productDao.findByPid(pid);
	}

	public PageBean<Product> findByPage(Integer page) {
		PageBean<Product> pageBean = new PageBean<Product>();
		pageBean.setPage(page);// ���õ�ǰ��ҳ��
		int limit = 10;// ����ÿҳ��ʾ��¼��
		pageBean.setLimit(limit);
		int totalCount = productDao.findCount(); // �����ܼ�¼��
		pageBean.setTotalPage(totalCount);
		int totalPage = 0;// ������ҳ��:
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		int begin = (page - 1) * limit;// ������ʾ��ҳ������ݵļ���
		List<Product> list = productDao.findByPage(begin, limit);
		pageBean.setList(list);
		return pageBean;
	}

	// ҵ��㱣����Ʒ�ķ���
	public void save(Product product) {
		productDao.save(product);
	}

	// ҵ���ɾ����Ʒ�ķ���
	public void delete(Product product) {
		productDao.delete(product);
	}

	// ҵ����޸���Ʒ
	public void update(Product product) {
		productDao.update(product);

	}
}
