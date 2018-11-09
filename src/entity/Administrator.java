package entity;

public class Administrator {
//主键
	private int aid;
//管理员名
	private String adminname;
//管理员密码
	private String adminpassword;
//管理员公告
	private String adminpublish;
	public String getAdminpublish() {
		return adminpublish;
	}
	public void setAdminpublish(String adminpublish) {
		this.adminpublish = adminpublish;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}
	
}
