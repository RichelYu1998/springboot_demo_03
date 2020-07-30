package cn.tedu.service;

import cn.tedu.pojo.User;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface UserService {

    public List<User> findAll();
}
