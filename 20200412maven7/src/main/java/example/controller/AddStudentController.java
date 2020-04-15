package example.controller;

import example.dao.Mario;
import example.pojo.Teacher;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.ResultSet;
import java.sql.SQLException;

@Controller
public class AddStudentController {

    //添加学生
    @RequestMapping(value="/addStudent")
    public ModelAndView addStudent(@RequestParam("studentName") String studentName) throws SQLException {

        Mario mario=new Mario();
        String sql="insert into student values('"+studentName+"')";//定义查询语句
        int i=mario.executeUpdate(sql);//执行sql语句
        mario.closeConnection();

        if(i==1){
            ModelAndView model = new ModelAndView("addStudentSuccess");
            return model;
        }else if(i==0){
            ModelAndView model = new ModelAndView("addStudentFalse");
            return model;
        }
        return null;
    }
}
