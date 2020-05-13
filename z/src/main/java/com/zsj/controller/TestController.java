package com.zsj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 进行测试时使用的控制器
 */
@Controller
@RequestMapping("/test")
public class TestController {

    /**
     * 测试时间轴页面
     * @return
     */
    @RequestMapping("/timeline")
    public String testTimeLine(){
        return "test/demo";
    }

    /**
     * 不同位置测试导航栏
     */
    @RequestMapping("/header")
    public String testHeader(){
        return "test/header";
    }

    /**
     * 在线音乐页面
     * @return
     */
    @RequestMapping("/onlineMusic")
    public String testOnlineMusic(){
        return "test/onlineMusic";
    }

    @RequestMapping("/onlineMusicOnIndex")
    public String testOnlineMusicOnPageIndex(){
        return "test/onlineMusicOnIndex";
    }
}
