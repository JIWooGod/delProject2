package service.room;


import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.room.ReservationCommand;
import model.dto.room.ReservationDTO;
import model.dto.room.RoomDTO;
import repository.room.RoomRepository;

@Service
public class ReservationService {
	@Autowired
	private RoomRepository roomRepository;
	public void execute(String roomGrade,Model model,HttpSession session)
	{
		RoomDTO dto = roomRepository.roomReservation(roomGrade);
		session.setAttribute("room", dto);
		
	}
	public void execute2(ReservationCommand reservationCommand,Model model,HttpSession session)
	{
		ReservationDTO dto = new ReservationDTO();
		dto.setRmbkPeople(reservationCommand.getPeople());
		dto.setRmbkChkIn(new Timestamp(reservationCommand.getFromdate().getTime()));
		dto.setRmbkChkOut(new Timestamp(reservationCommand.getTodate().getTime()));
		dto.setRoomDays(reservationCommand.getDays());
		dto.setRoomCount(reservationCommand.getRoomCount());
		
		session.setAttribute("reservation",dto);
	}
}
