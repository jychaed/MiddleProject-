package ddit.test;

import ddit.member.service.IMemberService;
import ddit.member.service.MemberServiceImpl;

public class memberTest {

	public static void main(String[] args) {
		
//		System.out.println(MemberServiceImpl.getService().memberList().get(0).getMember_id());
		IMemberService service = MemberServiceImpl.getService();
		
		String id = service.memIdCheck("dd@gmail.com");
		
		System.out.println(id);
		
	}

}
