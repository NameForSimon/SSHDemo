package dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.opensymphony.xwork2.ActionContext;

import entity.Administrator;
import entity.Book;
import entity.User;

public class AdministratorDaoImpl implements AdministratorDao {
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public String Deletebook(String bid) {
		try {
			int a = Integer.valueOf(bid.toString());
			if (hibernateTemplate.find("from Book b where b.bid=" + a).size() == 0) {
				return "fail";
			}else {
				hibernateTemplate.getSessionFactory().openSession()
				.createQuery("delete Book b where  b.bid=" + a)
				.executeUpdate();
				return "ok";
			}
		} catch (Exception e) {
			return "fail";
		}
	
	}

	@Override
	public String Deleteuser(String uid) {
		try {
			int a = Integer.valueOf(uid.toString());
			if (hibernateTemplate.find("from User u where u.uid=" + a).size() == 0) {
				return "fail";
		}else {
			hibernateTemplate.getSessionFactory().openSession()
			.createQuery("delete User u where  u.uid=" + a)
			.executeUpdate();
			return "ok";
		}
			} catch (Exception e) {
			return "fail";
		}
		
	}

	@Override
	public String publishnews(String adminname, String adminpublish) {
		hibernateTemplate.getSessionFactory().openSession()
		.createQuery("update Administrator a set  a.adminpublish='"+adminpublish+"' where a.adminname='"+adminname+"'")
		.executeUpdate();
		return "ok";
	}

	@Override
	public String resignAdmin(String adminname, String adminpassword) {
		List<Administrator> list = (List<Administrator>) hibernateTemplate.find("from Administrator where adminname='"+adminname+"'");
		if (list.size() > 0 || adminname=="" ||adminpassword=="") {
			return "fail";
		} else {
			Administrator administrator = new Administrator();
			administrator.setAdminname(adminname);
			administrator.setAdminpassword(adminpassword);
			hibernateTemplate.save(administrator);
			return "ok";
		}
	}

	@Override
	public List<User> listUser() {
		List<User> userlist=(List<User>) hibernateTemplate.find("from User");
			return userlist;
	}

	@Override
	public Administrator login(String adminname, String adminpassword) {
		List<Administrator> list = (List<Administrator>) hibernateTemplate.find("from Administrator where adminname=? and adminpassword=?",
				new String[] { adminname, adminpassword });
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public String adminupdate(String adminname, String adminpassword, String adminpublish) {
		hibernateTemplate.getSessionFactory().openSession()
		.createQuery("update Administrator a set  a.adminpassword='"+adminpassword+"' , a.adminpublish='"+adminpublish+"' where a.adminname='"+adminname+"'")
		.executeUpdate();
		return "ok";
	}

	@Override
	public List<Administrator> queryadminnews() {
		List<Administrator> list=(List<Administrator>) hibernateTemplate.find("select a.adminname,a.adminpublish from Administrator a" );
		return list;
	}
}
