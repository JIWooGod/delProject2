package Controller.Room;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.room.ReservationCommand;
import service.room.ReservationService;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService reservationService;
	@RequestMapping(value = "/reservation")
	public String reservation(@RequestParam(value = "room")String roomGrade,Model model,HttpSession session)
	{
		reservationService.execute(roomGrade,model,session);
		return"room/reservation_1";
	}
	@RequestMapping("/reservationStep2")
	public String reservation2(ReservationCommand reservationCommand,Model model,HttpSession session)
	{
		reservationService.execute2(reservationCommand,model,session);
		return"room/reservation_2";
	}
	

}
