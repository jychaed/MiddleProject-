package ddit.vo;

public class RoomReviewListVO {
	private String r_reviewno;
	private String roomres_no;
	private String r_content;
	private int r_star;
	private String r_pic;
	private String r_date;
	private String member_nickname;
	private String room_code;
	
	
	
	
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public String getRoom_code() {
		return room_code;
	}
	public void setRoom_code(String room_code) {
		this.room_code = room_code;
	}
	public String getR_reviewno() {
		return r_reviewno;
	}
	public void setR_reviewno(String r_reviewno) {
		this.r_reviewno = r_reviewno;
	}
	public String getRoomres_no() {
		return roomres_no;
	}
	public void setRoomres_no(String roomres_no) {
		this.roomres_no = roomres_no;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public int getR_star() {
		return r_star;
	}
	public void setR_star(int r_star) {
		this.r_star = r_star;
	}
	public String getR_pic() {
		return r_pic;
	}
	public void setR_pic(String r_pic) {
		this.r_pic = r_pic;
	}
	public String getR_date() {
		return r_date;
	}
	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

}
