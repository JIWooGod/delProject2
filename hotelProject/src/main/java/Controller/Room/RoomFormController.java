package Controller.Room;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.room.RoomCommand;
import service.room.RoomFormService;

@Controller
@RequestMapping(value = "/roomForm")
public class RoomFormController {
	@Autowired
	private RoomFormService roomFormService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String roomForm()
	{
		return"room/room_form";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String roomFormPro(RoomCommand roomCommand,HttpServletRequest request)
	{
		roomFormService.execute(roomCommand,request);
		return"redirect:/main";
	}
}
