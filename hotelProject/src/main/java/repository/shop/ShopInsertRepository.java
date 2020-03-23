package repository.shop;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.room.RoomDTO;
import model.dto.shop.shopDTO;
@Repository
public class ShopInsertRepository {
	@Autowired
	SqlSession sqlSession;;
	private final String namespace = "shopMapper";
	public void insertShop(shopDTO dto) {
		String statement = namespace+".insertGoods";
		sqlSession.insert(statement,dto);
	
	}

}
