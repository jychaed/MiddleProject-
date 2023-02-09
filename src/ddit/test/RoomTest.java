package ddit.test;

import java.util.List;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.vo.RoomVO;

public class RoomTest {
	public static void main(String[] args) {
		IItemService service = ItemServiceImpl.getInstance();
		List<RoomVO> list = service.listRoom();
		System.out.println(list);
	}
}
