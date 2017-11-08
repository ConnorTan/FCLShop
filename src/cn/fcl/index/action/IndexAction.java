package cn.fcl.index.action;

import java.util.List;

import cn.fcl.product.service.ProductService;
import cn.fcl.product.vo.Product;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {
	
	// 注入商品的Service
	private ProductService productService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	/**
	 * 跳转到首页
	 */
	public String execute() {
		//查询热门商品
		List<Product> hList = productService.findHot();
		// 将热门商品存入到Session的范围:
		ActionContext.getContext().getValueStack().set("hList", hList);
		return "index";
	}
}
