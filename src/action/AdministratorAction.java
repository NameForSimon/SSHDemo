package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import entity.Administrator;
import entity.Book;
import entity.User;
import service.AdministratorService;

public class AdministratorAction {
private AdministratorService administratorService;
public void setAdministratorService(AdministratorService administratorService) {
	this.administratorService = administratorService;
}
//查看交换信息
public String Listbook() {
	return null;
}
//删除交换信息
public String Deletebook() {
	HttpServletRequest request = ServletActionContext.getRequest();
	String bid = request.getParameter("bid");
	if (administratorService.Deletebook(bid) == "fail") {
		return "fail";
	} else {
		return "ok";
	}
}
//删除用户
public String Deleteuser() {
	HttpServletRequest request = ServletActionContext.getRequest();
	String uid = request.getParameter("uid");
	if (administratorService.Deleteuser(uid) == "fail") {
		return "fail";
	} else {
		return "ok";
	}
}
//发布管理员公告
public String publishnews() {
	HttpServletRequest request = ServletActionContext.getRequest();
	String adminname = request.getParameter("adminname");
	String adminpublish = request.getParameter("adminpublish");
	if (administratorService.publishnews(adminname, adminpublish) == "fail") {
		return "fail";
	} else {
		return "ok";
	}
}
//注册管理员
public String resignAdmin() {
	HttpServletRequest request = ServletActionContext.getRequest();
	String adminname = request.getParameter("adminname");
	String adminpassword = request.getParameter("adminpassword");
	if (administratorService.resignAdmin(adminname, adminpassword) == "fail") {
		return "fail";
	}
	return "ok";
}
//查看用户列表
public String listUser() {
	List<User> userlist = administratorService.listUser();
	HttpServletRequest request = ServletActionContext.getRequest();
	request.setAttribute("userlist", userlist);
	if (userlist.size() > 0) {
		return "userlist";
	} else {
		return null;
	}
}
//登录功能
public String adminlogin() {
	return null;
}
//更改账号信息
public String adminupdate() {
	HttpServletRequest request = ServletActionContext.getRequest();
	String adminname = request.getParameter("adminname");
	String adminpassword = request.getParameter("adminpassword");
	String adminpublish = request.getParameter("adminpublish");
	if (adminname == "" || adminpassword == "") {
		return "updatefail";
	} else {
		administratorService.adminupdate(adminname, adminpassword, adminpublish);
		return "updatesuccess";
	}
}

//管理员公告显示
public String queryadminnews() {
	List<Administrator> administratorlist = administratorService.queryadminnews();
	HttpServletRequest request = ServletActionContext.getRequest();
	request.setAttribute("administratorlist", administratorlist);
	if (administratorlist.size() > 0) {
		return "ok";
	} else {
		return null;
	}
}
}
