package com.mishop.item.center.web.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.alibaba.fastjson.JSON;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.io.Input;
import com.esotericsoftware.kryo.io.Output;
import com.mishop.item.center.aop.annotation.log.WebLog;
import com.mishop.item.center.common.model.Country;
import com.mishop.item.center.web.vo.UserVo;

/**
 * 
 * 
 * @author zhang
 *
 */
@Controller
@RequestMapping("/test")

public class TestController {

	@Autowired
	private StringRedisTemplate redisTemplate;

	@Autowired
	private RedisTemplate kryoTemplate;

	@RequestMapping("/va")
	@ResponseBody
	public void delete(Integer id) {
	}

	@RequestMapping(value = "/free", method = RequestMethod.GET)
	public ModelAndView view() {
		try {
			ModelAndView result = new ModelAndView();
			result.addObject("message", "message freemarker");
			result.setViewName("message");
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping("/save")
	@ResponseBody
	public String save(@Valid UserVo user, BindingResult result, Error err) {
		System.out.println(JSON.toJSONString(result));
		System.out.println(JSON.toJSONString(err.getMessage()));
		if (result.hasErrors()) {
			return "error";
		}
		return "success";
	}

	@WebLog
	@RequestMapping(value = "/json", produces = "application/json")
	@ResponseBody
	public Object User(@Valid UserVo user, BindingResult result, Error err) {
		user.setId(100l);
		user.setName("xx");
		user.setPassword("aa");

		System.out.println("user controller");
		return user;
	}

	@RequestMapping(value = "/xml", produces = "application/xml")
	@ResponseBody
	public Object UserXml(@Valid UserVo user, BindingResult result, Error err) {
		user.setId(100l);
		user.setName("xx");
		user.setPassword("aa");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("key", "value");
		user.setInfo(map);

		List<Integer> userlist = new ArrayList<Integer>();
		userlist.add(100);
		userlist.add(200);
		user.setList(userlist);

		return user;
	}

	@RequestMapping(value = "/err")
	public void errtest() {
		String user = null;
		throw new IllegalArgumentException("参数长度不是7位");
	}

	@RequestMapping(value = "/redis")
	@ResponseBody
	public void redis() throws FileNotFoundException {
		redisTemplate.opsForValue().set("redis", "this redis");
		System.out.println(redisTemplate.opsForValue().get("aa"));

		UserVo userVo = new UserVo();
		UserVo aa = new UserVo();
		userVo.setId(10l);
		userVo.setName("testfastjson");
		redisTemplate.opsForValue().set("cache", JSON.toJSONString(userVo));
		aa = JSON.parseObject(redisTemplate.opsForValue().get("cache"), UserVo.class);
		System.out.println(aa.getName());

		// kryo

		UserVo userVo1 = new UserVo();
		UserVo bb = new UserVo();
		userVo1.setId(10l);
		userVo1.setName("kryo");

		Kryo kryo = new Kryo();
		// ...
		Output output = new Output(new FileOutputStream("file.bin"));
		kryo.writeObject(output, userVo1);
		output.close();
		// ...
		Input input = new Input(new FileInputStream("file.bin"));
		UserVo user2 = kryo.readObject(input, UserVo.class);
		System.out.println(user2.getName());
		input.close();
	}

	// @RequestMapping(value = "/kryo")
	// @ResponseBody
	// public void redis1() {
	// UserVo userVo = new UserVo();
	// UserVo aa = new UserVo();
	// userVo.setId(10l);
	// userVo.setName("testkryo");
	// String dd = "ss";
	// byte[] xx = kryoTemplate.getDefaultSerializer().serialize(userVo);
	// System.out.println(xx);
	//// kryoTemplate.opsForValue().get("kryo");
	// System.out.println("kryo");
	// }
}
