package entity;

public class Administrator {
//����
	private int aid;
//����Ա��
	private String adminname;
//����Ա����
	private String adminpassword;
//����Ա����
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
