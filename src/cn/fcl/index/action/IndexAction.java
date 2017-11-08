package cn.fcl.index.action;

import java.util.List;

import cn.fcl.product.service.ProductService;
import cn.fcl.product.vo.Product;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {
	
	// ע����Ʒ��Service
	private ProductService productService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	/**
	 * ��ת����ҳ
	 */
	public String execute() {
		//��ѯ������Ʒ
		List<Product> hList = productService.findHot();
		// ��������Ʒ���뵽Session�ķ�Χ:
		ActionContext.getContext().getValueStack().set("hList", hList);
		return "index";
	}
}
