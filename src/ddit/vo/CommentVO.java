package ddit.vo;

public class CommentVO {

	private int lounge_no;
	private String member_id;
	private String comment_content;
	private String comment_date;
	
	public int getLounge_no() {
		return lounge_no;
	}
	public void setLounge_no(int lounge_no) {
		this.lounge_no = lounge_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	
}
