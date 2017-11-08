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

	// ע����Ʒ��Service
	private ProductService productService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	// ����page����
	private Integer page;

	public void setPage(Integer page) {
		this.page = page;
	}

	// �ļ��ϴ���Ҫ����������:
	private File upload; // �ϴ����ļ�
	private String uploadFileName; // �����ļ��ϴ����ļ�
	private String uploadContentType; // �ļ�����

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	// ����ҳ�Ĳ�ѯ��Ʒ��ִ�з���:
	public String findAll() {
		PageBean<Product> pageBean = productService.findByPage(page);
		ArrayList<Product> list = new ArrayList<Product>();
		list = (ArrayList<Product>) pageBean.getList();
		for (Product product : list) {
			System.out.println(product.getPname());
		}
		// �����ݴ��ݵ�ҳ����
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		// ��ת
		return "findAll";
	}

	// ������Ʒ�ķ���:
	public String save() throws IOException {
		// ���ύ��������ӵ����ݿ���.
		product.setPdate(new Date());
		// product.setImage(image);
		if (upload != null) {
			// ����ƷͼƬ�ϴ�����������.
			// ����ϴ�ͼƬ�ķ�������·��.
			String path = ServletActionContext.getServletContext().getRealPath(
					"/products");
			// �����ļ����Ͷ���:
			File diskFile = new File(path + "//" + uploadFileName);
			// �ļ��ϴ�:
			FileUtils.copyFile(upload, diskFile);

			product.setImage("products/" + uploadFileName);
		}
		productService.save(product);
		return "saveSuccess";
	}

	// ɾ����Ʒ�ķ�����
	public String delete() {
		// ��ѯ
		product = productService.findByPid(product.getPid());
		// ɾ���ϴ�ͼƬ
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
	
	//�༭��Ʒ�ķ���
	public String edit(){
		product=productService.findByPid(product.getPid());
		//�����ݱ��浽ҳ��
		return "editSuccess";
	}
	
	//�޸���Ʒ
	public String update() throws IOException{
		product.setPdate(new Date());
		// �ϴ�:
		if(upload != null ){
			//ɾ��ԭ����ͼƬ
			String delPath = ServletActionContext.getServletContext().getRealPath(
					"/" + product.getImage());
			File file = new File(delPath);
			file.delete();
			// ����ϴ�ͼƬ�ķ�������·��.
			String path = ServletActionContext.getServletContext().getRealPath(
					"/products");
			// �����ļ����Ͷ���:
			File diskFile = new File(path + "//" + uploadFileName);
			// �ļ��ϴ�:
			FileUtils.copyFile(upload, diskFile);
	
			product.setImage("products/" + uploadFileName);
		}
		productService.update(product);
		// ҳ����ת
		return "updateSuccess";
	}
}
