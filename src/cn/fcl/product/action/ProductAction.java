package cn.fcl.product.action;

import cn.fcl.product.service.ProductService;
import cn.fcl.product.vo.Product;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ProductAction extends ActionSupport implements
		ModelDriven<Product> {

	private Product product = new Product();

	public Product getModel() {
		return product;
	}

	private ProductService productService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	// 根据商品的ID查询商品
	public String findByPid() {
		product = productService.findByPid(product.getPid());
		return "findByPid";
	}

}
