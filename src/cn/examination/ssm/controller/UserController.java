package cn.examination.ssm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.examination.ssm.domain.Paper;
import cn.examination.ssm.domain.Report;
import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.ReportService;
import cn.examination.ssm.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
    private	PaperService paperService;
	@Autowired
	private ReportService reportService;
	
	@RequestMapping("/check")
	public String Check(HttpServletRequest request,HttpServletResponse response) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String path = request.getContextPath();
	    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	    User u = userService.getUserById(username);
		if(userService.Check(username, password)==1) {
			List<User> list = userService.getUserAll();
			request.getSession().setAttribute("userlist", list);

			request.getSession().setAttribute("userLogin", u);
			
			List<Report> myrlist = reportService.getReportByAccount(username);
			request.getSession().setAttribute("myreport", myrlist);
//			System.out.println("myrlist"+myrlist);
			
			List<Paper> plist = paperService.getPaperAll();
//			System.out.println("plist"+plist);
			
			if(plist!=null){
    	 		for(int i=0;i<plist.size();i++){
    	 			for(int j=0;j<myrlist.size();j++) {
    	 				if(myrlist.get(j).gettID().contains(plist.get(i).gettID())) {
//    	 					System.out.println("has"+plist.get(i).gettName());
    	 					plist.remove(i);
    	 			}
    	 				}
    	 			}
    	 		}
			request.getSession().setAttribute("paperlist", plist);
			
			System.out.println("1");
			return "homepage";
		}
		else if(userService.Check(username, password)==10){
			List<User> list = userService.getUserAll();
			request.getSession().setAttribute("userlist", list);
			
			request.getSession().setAttribute("userLogin", u);
			System.out.println("10");
			return "UserManager";
		}else if(userService.Check(username, password)==20){
			List<User> list = userService.getUserAll();
			request.getSession().setAttribute("userlist", list);
			
			request.getSession().setAttribute("userLogin", u);
			System.out.println("20");
			return "TeacherManager";
		}else {
			System.out.println("x");
			return "404";
		}
    }
	
	@RequestMapping("/checkk")
	@ResponseBody
	public String Checkk(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(userService.Check(username, password)==1) {
//			List<User> list = userService.getUserAll();
//			request.getSession().setAttribute("userlist", list);
			return "Success";
		}
		else{
			return "Failed";
		}
    }
	
	@RequestMapping("/findAll")
	public String findAll(HttpServletRequest request) {
		List<User> list = userService.getUserAll();
		request.getSession().setAttribute("userlist", list);
		return "Success";
    }
	
	@RequestMapping("/find")
	public String find(HttpServletRequest request) {
		List<User> list = userService.getUserAll();
		request.getSession().setAttribute("userlist", list);
		return "user";
    }
	
	@RequestMapping("/getUserById")
	public void getUserById(HttpServletRequest request) {
		String account = request.getParameter("account");
		User u = userService.getUserById(account);
		request.getSession().setAttribute("userLogin", u);
    }
	
	@RequestMapping("/save")
	public String saveUser(HttpServletRequest request,HttpServletResponse response) {
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String unitName = request.getParameter("unitName");
		String tel = request.getParameter("tel");
		userService.saveUser(account, password, unitName, tel);
//		String path = request.getContextPath();
//	    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
		System.out.println("!!!!");
//		try {
//			response.sendRedirect(basePath+"Login.jsp");
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		return "Login";
    }
	
	@RequestMapping("/AddUser")
	public String AddUser(HttpServletRequest request,HttpServletResponse response) {
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String unitName = request.getParameter("unitName");
		String tel = request.getParameter("tel");
		userService.saveUser(account, password, unitName, tel);
		List<User> list = userService.getUserAll();
		request.getSession().setAttribute("userlist", list);
		System.out.println("Add");
		return "user";
    }
	
	@RequestMapping("/update")
	public String updateUser(HttpServletRequest request,HttpServletResponse response) {
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String scale = request.getParameter("scale");
		String unitName = request.getParameter("unitName");
		String tel = request.getParameter("tel");
		userService.updateUser(account, password, scale, unitName, tel);
//		System.out.println("OK");
		List<User> list = userService.getUserAll();
		request.getSession().setAttribute("userlist", list);
		return "user";
    }

	@RequestMapping("/updateMyself")
	public String updateMyself(HttpServletRequest request,HttpServletResponse response) {
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String scale = request.getParameter("scale");
		String unitName = request.getParameter("unitName");
		String tel = request.getParameter("tel");
		userService.updateUser(account, password, scale, unitName, tel);
//		System.out.println("OK");
		List<User> list = userService.getUserAll();
		request.getSession().setAttribute("userlist", list);
		return "Login";
    }
	
	@RequestMapping("/deleteUser")
	public String deleteUser(HttpServletRequest request) {
		String account = request.getParameter("account");
		userService.deleteUser(account);
		List<User> list = userService.getUserAll();
		request.getSession().setAttribute("userlist", list);
		return "user";
    }
}
