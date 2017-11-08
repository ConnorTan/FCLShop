package cn.fcl.user.action;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import cn.fcl.user.service.UserService;
import cn.fcl.user.vo.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User>{

	private User user = new User();
	
	public User getModel() {
		return user;
	}
	
	// ������֤��:
	private String checkcode;
	
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
	public String getCheckcode() {
		return checkcode;
	}

	// ע��UserService
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/**
	 * ��ת��ע��ҳ���ִ�з���
	 */
	public String registPage() {
		return "registPage";
	}

	/**
	 * AJAX�����첽У���û�����ִ�з���
	 * 
	 * @throws IOException
	 */
	public String findByName() throws IOException {
		// ����Service���в�ѯ:
		User existUser = userService.findByUsername(user.getUsername());
		// ���response����,��ҳ�����:
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		// �ж�
		System.out.println(existUser);
		if (existUser != null) {
			// ��ѯ�����û�:�û����Ѿ�����
			response.getWriter().println("<font color='red'>�û����Ѿ�����</font>");
		} else {
			// û��ѯ�����û�:�û�������ʹ��
			response.getWriter().println("<font color='green'>�û�������ʹ��</font>");
		}
		return NONE;
	}

	/**
	 * �û�ע��ķ���:
	 * @throws MessagingException 
	 */
	public String register() throws MessagingException {
		userService.save(user);
		this.addActionMessage("ע��ɹ�����ȥ���伤��");
		return "msg";
	}

	/**
	 * �û�����ķ���
	 */
	public String active() {
		// �����û�����ѯ�û�:
		User existUser = userService.findByUsername(user.getUsername());
		existUser.setState(1);
		userService.update(existUser);
		this.addActionMessage("����ɹ�:��ȥ��¼!");
		return "msg";
	}

	/**
	 * ��ת����¼ҳ��
	 */
	public String loginPage() {
		return "loginPage";
	}

	/**
	 * ��¼�ķ���
	 */
	public String login() {
		User existUser = userService.login(user);
		String checkcode1 = (String) ServletActionContext.getRequest()
				.getSession().getAttribute("checkcode");
		// �ж�
		if (existUser == null) {
			// ��¼ʧ��
			this.addActionError("��¼ʧ��:�û��������������û�δ����!");
			return LOGIN;
		}if(!checkcode.equalsIgnoreCase(checkcode1)){
			this.addActionError("��֤���������!");
			return "checkcodeFail";
		}else {
			// ��¼�ɹ�
			// ���û�����Ϣ���뵽session��
			ServletActionContext.getRequest().getSession()
					.setAttribute("existUser", existUser);
			// ҳ����ת
			return "loginSuccess";
		}
	
	}
	
	/**
	 * �û��˳��ķ���
	 */
	public String quit(){
		// ����session
		ServletActionContext.getRequest().getSession().invalidate();
		return "quit";
	}

}
