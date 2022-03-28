package com.memo.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.memo.test.model.Test;

@Controller
public class TestController {
	
	// string
	@ResponseBody
	@RequestMapping("/test1")
	public String test1() {
		return "Hello world!";
	}
	
	// json
	@ResponseBody
	@RequestMapping("/test2")
	public Map<String, Object> test2() {
		Map<String, Object> result = new HashMap<>();
		result.put("aaaa", 1234);
		result.put("bbbb", "zzz");
		result.put("ccc", "aaaaaa");
		
		return result;
	}
	
	// jsp
	@RequestMapping("/test3")
	public String test3() {
		return "test/example";
	}
	
	// tests
	@ResponseBody
	@PostMapping("/test4") 
	public String test4(
			@RequestParam("ids[]") List<Integer> ids) {
		
		return "성공";
	}
	
	// jsp 2
	@RequestMapping("/test5")
	public String test5() {
		return "test/test5";
	}
	
	@ResponseBody
	@RequestMapping("/test5_request")
	public String req(
			@ModelAttribute Test test) {
		
		return "성공";
	}
}
