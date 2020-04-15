package example.controller;

import example.dao.Mario;
import example.pojo.Homework;
import example.pojo.StudentHomework;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {
    //返回主页
    @RequestMapping(value="/returnIndex")
    public ModelAndView returnIndex() {
        ModelAndView model = new ModelAndView("index");
        return model;
    }

    //学生登陆
    @RequestMapping(value="/indexStudentLogin")
    public ModelAndView indexStudentLogin() {
        ModelAndView model = new ModelAndView("studentLogin");
        return model;
    }

    //老师登陆
    @RequestMapping(value="/indexTeacherLogin")
    public ModelAndView indexTeacherLogin() {
        ModelAndView model = new ModelAndView("teacherLogin");
        return model;
    }

    //添加学生
    @RequestMapping(value="/indexAddStudent")
    public ModelAndView indexAddStudent() {
        ModelAndView model = new ModelAndView("addStudent");
        return model;
    }

    //添加作业
    @RequestMapping(value="/indexAddHomework")
    public ModelAndView indexAddHomework() {
        ModelAndView model = new ModelAndView("addHomework");
        return model;
    }

    //提交作业
    @RequestMapping(value="/indexSubmitHomework")
    public ModelAndView indexSubmitHomework() throws SQLException {

        Mario mario=new Mario();
        String sql="select * from homework";//定义查询语句
        ResultSet rs=mario.executeQuery(sql);//执行sql语句

        List<Homework> homeworkList = new ArrayList<Homework>();

        while(rs.next()){
            Homework homework=new Homework();
            homework.setHomeworkNum((int)rs.getObject("homeworkNum"));
            homework.setHomeworkTitle((String)rs.getObject("homeworkTitle"));
            homework.setHomeworkContent((String)rs.getObject("homeworkContent"));

            homeworkList.add(homework);
        }

        ModelAndView model = new ModelAndView("submitHomework");
        model.addObject("homeworkList",homeworkList);
        return model;
    }

    //查看学生作业
    @RequestMapping(value="/indexCheckHomework")
    public ModelAndView indexCheckHomework() throws SQLException {

        Mario mario=new Mario();
        String sql="select * from studentHomework";//定义查询语句
        ResultSet rs=mario.executeQuery(sql);//执行sql语句

        List<StudentHomework> studentHomeworkList = new ArrayList<StudentHomework>();

        while(rs.next()){
            StudentHomework studentHomework=new StudentHomework();
            studentHomework.setHomeworkNum((int)rs.getObject("homeworkNum"));
            studentHomework.setStudentName((String)rs.getObject("studentName"));
            studentHomework.setHomeworkContent((String)rs.getObject("homeworkContent"));

            studentHomeworkList.add(studentHomework);
        }

        ModelAndView model = new ModelAndView("checkStudentHomework");
        model.addObject("studentHomeworkList",studentHomeworkList);
        return model;
    }
}
