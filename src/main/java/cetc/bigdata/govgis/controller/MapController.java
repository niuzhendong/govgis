package cetc.bigdata.govgis.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import cetc.bigdata.govgis.service.IMapService;

/**  
 * @author 
 * @Description: TODO  
 * @date 2017/12/19 13:44  
 */  
@Controller
public class MapController {
	
	@Autowired
	public IMapService iMapService;
	

	@RequestMapping(value = "/hello" , method = RequestMethod.GET)
    public @ResponseBody JSONObject hello(@RequestParam Map<String,String> param){
    	Map<String, Object> res = iMapService.map(param);
    	
    	JSONObject jsonObject = (JSONObject) JSONObject.toJSON(res.get("geojson"));
        return jsonObject;  
    } 
}