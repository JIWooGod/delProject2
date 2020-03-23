package Controller.Room;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomController {
	@RequestMapping("/standard")
	public String standard()
	{
		return"room/room_standard";
	}
	@RequestMapping("/deluxe")
	public String deluxe()
	{
		return"room/room-deluxe";
	}
	@RequestMapping("/deluxeSuite")
	public String deluxeSuite()
	{
		return"room/room_deluxe_suite";
	}
	@RequestMapping("/royalSuite")
	public String royalsuite()
	{
		return"room/room_royal_suite";
	}
	@RequestMapping("/preSuite")
	public String preSuite()
	{
		return"room/room_pre_suite";
	}
}
