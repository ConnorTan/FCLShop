package cn.fcl.adminuser.action;

import org.apache.struts2.ServletActionContext;

import cn.fcl.adminuser.service.AdminUserService;
import cn.fcl.adminuser.vo.AdminUser;
import cn.fcl.product.service.ProductService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * ��̨��¼��Action
 * 
 * @author YU
 * 
 */
public class AdminUserAction extends ActionSupport implements ModelDriven<AdminUser> {

	private AdminUser adminUser = new AdminUser();

	public AdminUser getModel() {
		return adminUser;
	}

	// ע��service
	private AdminUserService adminUserService;

	public void setAdminUserService(AdminUserService adminUserService) {
		this.adminUserService = adminUserService;
	}

	/**
	 * ��̨��¼�ķ���
	 */
	public String login() {
		
		AdminUser exisAdminUser = adminUserService.login(adminUser);		
		if (exisAdminUser == null) {
			ActionContext.getContext().getValueStack().set("Error", "�û��������������");
			return "loginFail";
		} else {
			ServletActionContext.getRequest().getSession()
					.setAttribute("exisAdminUser", exisAdminUser);
			return "loginSuccess";
		}
	}
	
}
