package service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import dao.AdministratorDao;
import entity.Administrator;
import entity.Book;
import entity.User;

@Transactional
public class AdministratorService {
	private AdministratorDao administratorDao;

	public void setAdministratorDao(AdministratorDao administratorDao) {
		this.administratorDao = administratorDao;
	}

	public String Deletebook(String bid) {
		if (administratorDao.Deletebook(bid) == "fail") {
			return "fail";
		} else
			return "ok";
	}

	public String Deleteuser(String uid) {
		if (administratorDao.Deleteuser(uid) == "fail") {
			return "fail";
		} else
			return "ok";
	}

	public String publishnews(String adminname, String adminpublish) {
		if (administratorDao.publishnews(adminname, adminpublish) == "fail") {
			return "fail";
		} else
			return "ok";
	}

	public String resignAdmin(String adminname, String adminpassword) {
		if (administratorDao.resignAdmin(adminname, adminpassword) == "fail") {
			return "fail";
		} else
			return "ok";
	}

	public List<User> listUser() {
		return administratorDao.listUser();
	}

	public Administrator login(String adminname, String adminpassword) {
		return administratorDao.login(adminname, adminpassword);
	}

	public String adminupdate(String adminname, String adminpassword, String adminpublish) {
		if (administratorDao.adminupdate(adminname, adminpassword, adminpublish) == "ok") {
			return "ok";
		} else {
			return null;
		}
	}

	public List<Administrator> queryadminnews() {
	return administratorDao.queryadminnews();
	}
}
