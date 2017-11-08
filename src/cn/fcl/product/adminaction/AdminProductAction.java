package cn.fcl.product.adminaction;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import cn.fcl.product.service.ProductService;
import cn.fcl.product.vo.Product;
import cn.fcl.utils.PageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminProductAction extends ActionSupport implements
		ModelDriven<Product> {

	private Product product = new Product();

	public Product getModel() {
		return product;
	}

	// 注入商品的Service
	private ProductService productService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	// 接受page参数
	private Integer page;

	public void setPage(Integer page) {
		this.page = page;
	}

	// 文件上传需要的三个属性:
	private File upload; // 上传的文件
	private String uploadFileName; // 接受文件上传的文件
	private String uploadContentType; // 文件类型

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	// 带分页的查询商品的执行方法:
	public String findAll() {
		PageBean<Product> pageBean = productService.findByPage(page);
		ArrayList<Product> list = new ArrayList<Product>();
		list = (ArrayList<Product>) pageBean.getList();
		for (Product product : list) {
			System.out.println(product.getPname());
		}
		// 将数据传递到页面上
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		// 跳转
		return "findAll";
	}

	// 保存商品的方法:
	public String save() throws IOException {
		// 将提交的数据添加到数据库中.
		product.setPdate(new Date());
		// product.setImage(image);
		if (upload != null) {
			// 将商品图片上传到服务器上.
			// 获得上传图片的服务器端路径.
			String path = ServletActionContext.getServletContext().getRealPath(
					"/products");
			// 创建文件类型对象:
			File diskFile = new File(path + "//" + uploadFileName);
			// 文件上传:
			FileUtils.copyFile(upload, diskFile);

			product.setImage("products/" + uploadFileName);
		}
		productService.save(product);
		return "saveSuccess";
	}

	// 删除商品的方法：
	public String delete() {
		// 查询
		product = productService.findByPid(product.getPid());
		// 删除上传图片
		String path = product.getImage();
		if (path != null) {
			String realPath = ServletActionContext.getServletContext()
					.getRealPath("/" + path);
			File file = new File(realPath);
			file.delete();
		}
		productService.delete(product);
		return "deleteSuccess";
	}
	
	//编辑商品的方法
	public String edit(){
		product=productService.findByPid(product.getPid());
		//将数据保存到页面
		return "editSuccess";
	}
	
	//修改商品
	public String update() throws IOException{
		product.setPdate(new Date());
		// 上传:
		if(upload != null ){
			//删除原来的图片
			String delPath = ServletActionContext.getServletContext().getRealPath(
					"/" + product.getImage());
			File file = new File(delPath);
			file.delete();
			// 获得上传图片的服务器端路径.
			String path = ServletActionContext.getServletContext().getRealPath(
					"/products");
			// 创建文件类型对象:
			File diskFile = new File(path + "//" + uploadFileName);
			// 文件上传:
			FileUtils.copyFile(upload, diskFile);
	
			product.setImage("products/" + uploadFileName);
		}
		productService.update(product);
		// 页面跳转
		return "updateSuccess";
	}
}
