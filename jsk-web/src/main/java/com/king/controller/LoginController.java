package com.king.controller;

import com.king.main.User;
import com.king.service.loginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class LoginController {

    @Resource
    private loginService service;

    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public ModelAndView login(User user){
        String tip="";
        ModelAndView mv = new ModelAndView();
        boolean log = service.login(user);
        if(log)
            tip=user.getName() + "登录成功";
        else
            tip=user.getName() + "登录失败";
        mv.addObject("tip",tip);
        mv.setViewName("reusult");
        return mv;
    }
}
