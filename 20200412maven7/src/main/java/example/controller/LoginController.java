package example.controller;

import example.dao.Mario;
import example.pojo.Student;
import example.pojo.Teacher;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import sun.plugin.dom.core.Element;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

@Controller
public class LoginController {

    //老师登录
    @RequestMapping(value="/teacherLogin")
    public ModelAndView teacherLogin(@RequestParam("loginName") String loginName, HttpServletRequest  request) throws SQLException {

        Mario mario=new Mario();
        String sql="select * from teacher where teacherName="+"'"+loginName+"'";//定义查询语句
        ResultSet rs=mario.executeQuery(sql);//执行sql语句
        //只判断一条数据
        if(rs.next())
        {
            Teacher teacher=new Teacher();
            teacher.setTeacherName(loginName);

            mario.closeConnection();
            ModelAndView model = new ModelAndView("loginSuccess");
            model.addObject("type","teacher");
            model.addObject("teacher",teacher);

            HttpSession session=request.getSession();
            session.setAttribute("currentType","teacher");
            session.setAttribute("currentName",loginName);

            return model;
        }else{
            mario.closeConnection();
            ModelAndView model = new ModelAndView("loginFalse");
            model.addObject("type","teacher");
            return model;
        }
    }

    //学生登录
    @RequestMapping(value="/studentLogin")
    public ModelAndView studentLogin(@RequestParam("loginName") String loginName, HttpServletRequest  request) throws SQLException {

        Mario mario=new Mario();
        String sql="select * from student where studentName="+"'"+loginName+"'";//定义查询语句
        ResultSet rs=mario.executeQuery(sql);//执行sql语句
        //只判断一条数据
        if(rs.next())
        {
            Student student=new Student();
            student.setStudentName(loginName);

            mario.closeConnection();
            ModelAndView model = new ModelAndView("loginSuccess");
            model.addObject("type","student");
            model.addObject("student",student);

            HttpSession session=request.getSession();
            session.setAttribute("currentType","student");
            session.setAttribute("currentName",loginName);

            return model;
        }else{
            mario.closeConnection();
            ModelAndView model = new ModelAndView("loginFalse");
            model.addObject("type","student");
            return model;
        }
    }





}