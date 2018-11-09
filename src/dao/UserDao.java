package dao;

import java.util.List;

import entity.Book;
import entity.User;

public interface UserDao {

/*public void add();*/

public User login(String username, String password);

public String resign(String username, String password, String address, String phone);
public String update(String username, String password, String address, String phone);

public List<Book> userbooklist();
}
