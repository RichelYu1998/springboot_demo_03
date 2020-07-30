package cn.tedu.controller;

import cn.tedu.pojo.User;
import cn.tedu.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class UserController {

    @Resource
    private UserService userService;
    /**
     *  需求:用户通过http://localhost:8090/findAll请求,
     *  需求:
     *      1.跳转到userList.jsp页面中
     *      2.并且在页面中展现user列表数据
     *          页面中的取值${userList}
     */
    @RequestMapping("/findAll")
    public String findAll(Model model){

        List<User> userList = userService.findAll();
        model.addAttribute("userList",userList);
        return "userList";
    }
}
