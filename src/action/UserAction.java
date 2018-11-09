package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Book;
import service.AdministratorService;
import service.UserService;

public class UserAction extends ActionSupport {

	private UserService userService;
	private AdministratorService administratorService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public void setAdministratorService(AdministratorService administratorService) {
		this.administratorService = administratorService;
	}

	// 登录功能
	public String login() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String degree = request.getParameter("degree");
		if (degree == null) {
			return "faillogin";
		}
		if (degree.equals("admin")) {
			if (administratorService.login(username, password) == null) {
				this.addActionError("登陆失败：用户名或密码错误用户未激活！");
				return "faillogin";
			} else {
				ActionContext.getContext().getSession().put("adminname", username);
				return "adminsuccess";
			}
		} else {
			if (userService.login(username, password) == null) {
				this.addActionError("登陆失败：用户名或密码错误用户未激活！");
				return "faillogin";
			} else {
				ActionContext.getContext().getSession().put("username", username);
				return "success";
			}
		}
	}

	// 注册功能
	public String resign() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		if (userService.resign(username, password, address, phone) == "exit") {
			return "resignfail";
		}
		return "resignsuccess";
	}

	// 更新用户信息
	public String update() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		if (username == "" || password == "" || address == "" || phone == "") {
			return "updatefail";
		} else {
			userService.update(username, password, address, phone);
			return "updatesuccess";
		}
	}

	// 查看该用户的发布信息
	public String userbooklist() {
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Book> userbooklist = userService.userbooklist();
		request.setAttribute("userbooklist", userbooklist);
		if (userbooklist.size() > 0) {
			return "searchsuccess";
		} else {
			return "searchfail";
		}
	}
}
