package entity;

public class Book {
	//主键
private int bid;
	//想换的书籍
private String bookname;
	//你拥有的书籍和相关发布标题
private String title;
	//书籍相关描述
private String news;
	//交换地址
private String bookaddress;
	//联系电话
private String bookphone;
	//联系人名字
private String studentname;
	//书籍类别
private String about;
	//发布状态
private String status;
public String getStudentname() {
	return studentname;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public void setStudentname(String studentname) {
	this.studentname = studentname;
}
public String getAbout() {
	return about;
}
public void setAbout(String about) {
	this.about = about;
}
public int getBid() {
	return bid;
}
public void setBid(int bid) {
	this.bid = bid;
}
public String getBookname() {
	return bookname;
}
public void setBookname(String bookname) {
	this.bookname = bookname;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getNews() {
	return news;
}
public void setNews(String news) {
	this.news = news;
}
public String getBookaddress() {
	return bookaddress;
}
public void setBookaddress(String bookaddress) {
	this.bookaddress = bookaddress;
}
public String getBookphone() {
	return bookphone;
}
public void setBookphone(String bookphone) {
	this.bookphone = bookphone;
}

}
