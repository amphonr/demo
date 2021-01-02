package com.example.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController()
@RequestMapping("/demo")
public class DemoController {
	@Value("${msg}")
	private String msg;

	@GetMapping("/hello")
	public String get() {
		return msg;
	}

}
