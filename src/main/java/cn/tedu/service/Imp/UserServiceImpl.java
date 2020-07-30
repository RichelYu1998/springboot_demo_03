package cn.tedu.service.Imp;

import cn.tedu.mapper.UserMapper;
import cn.tedu.pojo.User;
import cn.tedu.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public List<User> findAll() {
        return userMapper.selectList(null);
    }
}
