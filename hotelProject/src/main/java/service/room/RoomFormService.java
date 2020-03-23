package service.room;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.room.RoomCommand;
import model.dto.room.RoomDTO;
import repository.room.RoomRepository;

@Service
public class RoomFormService {
	@Autowired
	private RoomRepository roomRepository;
	public void execute(RoomCommand roomCommand,HttpServletRequest request)
	{
		RoomDTO dto = new RoomDTO();
		dto.setRoomNo(roomCommand.getRoomNo());
		dto.setRoomGrade(roomCommand.getRoomGrade());
		dto.setRoomLoc(roomCommand.getRoomLoc());
		dto.setRoomBed(roomCommand.getRoomBed());
		dto.setRoomPrice(roomCommand.getRoomPrice());
		dto.setRoomView(roomCommand.getRoomView());
		
		String storeTotal = "";
		
		for(MultipartFile mf :roomCommand.getRoomPic()) //context 에 bean확인
		{
			String original = mf.getOriginalFilename();
			String originalFileExtension = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-","")+originalFileExtension;
			String fileSize = Long.toString(mf.getSize());
			
			storeTotal += store + "-";
		
			String path = request.getServletContext().getRealPath("/");
			//path += "WEB-INF\\view\\GoodsView\\update\\";
			path += "room\\update\\";
			
			File file = new File(path+store);
			try 
			{
				mf.transferTo(file);
			} catch (Exception e)
			{
		
				e.printStackTrace();
			}
		}
		dto.setRoomPic(storeTotal);
		
		roomRepository.insertRoom(dto);
	}

}
