package cetc.bigdata.govgis.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cetc.bigdata.govgis.dao.IMapDao;
import cetc.bigdata.govgis.service.IMapService;

@Service("IMapService")
public class MapServiceImpl implements IMapService {

	@Autowired
	public IMapDao iMapDao;

	@Override
	public Map<String, Object> map(Map<String, String> param) {
		// TODO Auto-generated method stub
		return iMapDao.map(param);
	}
}
