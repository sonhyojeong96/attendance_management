package jp.ac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import jp.ac.beans.LoginModel;

@RestController
@Controller
public class JunitController {
	@GetMapping("/hello")
	public String hell() {
		return "hello";
	}
    @GetMapping("/hello/beans")
    public LoginModel hello(@RequestParam("id") String id , @RequestParam("passWord") String passWord){
        return new LoginModel(id,passWord);
    }
}
