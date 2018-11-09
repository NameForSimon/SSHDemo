package service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import dao.UserDao;
import entity.Book;
import entity.User;

@Transactional
public class UserService {
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	/*
	 * public void add() { System.out.println("1234"); userDao.add(); UserDao
	 * dao=new UserDaoImpl() ; }
	 */

	// ��¼
	public User login(String username, String password) {
		return userDao.login(username, password);
	}

	// ע��
	public String resign(String username, String password, String address, String phone) {
		if (userDao.resign(username, password, address, phone) == "exit") {
			return "exit";
		} else {
			return "ok";
		}
	}

	// ����
	public String update(String username, String password, String address, String phone) {
		if (userDao.update(username, password, address, phone) == "ok") {
			return "ok";
		} else {
			return null;
		}
	}

	// �鿴���û�������Ϣ
	public List<Book> userbooklist() {
		return userDao.userbooklist();
	}
}
