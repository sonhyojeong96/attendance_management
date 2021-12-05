package jp.ac.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Locale;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.ac.beans.AttSelectModel;
import jp.ac.beans.LoginModel;
import jp.ac.beans.MemberModel;
import jp.ac.services.MemberService;
import jp.ac.services.AttSelectService;
import jp.ac.services.LoginService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class PageController {
	
    @RequestMapping(value = "/休日管理(月)" , method = RequestMethod.GET) 
    public String 休日管理() throws Exception {
        return "休日管理(月)";
    }

    @RequestMapping(value = "/共通コード" , method = RequestMethod.GET) 
    public String 共通コード() throws Exception {
        return "commonCode";
    }
    
    @RequestMapping(value = "/職員管理" , method = RequestMethod.GET) 
    public String 職員管理() throws Exception {
        return "職員管理";
    }
    
//    @RequestMapping(value = "/職員勤務照" , method = RequestMethod.GET) 
//    public String 職員勤務照会() throws Exception {
//        return "職員勤務照会";
//    }
    
    @RequestMapping(value = "/個人休暇申請" , method = RequestMethod.GET) 
    public String 個人休暇申請() throws Exception {
        return "holidayApplyView";
    }
    
    @RequestMapping(value = "/個人休暇(代表)" , method = RequestMethod.GET) 
    public String 個人休暇() throws Exception {
        return "個人休暇(代表)";
    }
    
    @RequestMapping(value = "/社員業務指示" , method = RequestMethod.GET) 
    public String 職社員業務指示() throws Exception {
        return "社員業務指示";
    }

} 
