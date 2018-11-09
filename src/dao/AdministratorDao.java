package dao;

import java.util.List;

import entity.Administrator;
import entity.User;

public interface AdministratorDao {

	public String Deletebook(String bid);

	public String Deleteuser(String uid);

	public String publishnews(String adminname, String adminpublish);

	public String resignAdmin(String adminname, String adminpassword);

	public List<User> listUser();

	public Administrator login(String adminname, String adminpassword);

	public String adminupdate(String adminname, String adminpassword, String adminpublish);

	public List<Administrator> queryadminnews();

}
