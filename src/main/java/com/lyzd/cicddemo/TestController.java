package com.lyzd.cicddemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @className：cicddemo
 * @description：TODO
 * @datetime：2020/11/25 3:47 下午
 * @author：sunqiang
 */
@RequestMapping("/test")
@RestController
public class TestController {

    @RequestMapping("/demo")
    @GetMapping
    public String test(String str){
        System.out.println("请求参数==========" + str);
        return "hello world! 我是孙强123456789" + str;
    }


}