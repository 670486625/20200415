package example.controller;

import example.dao.Mario;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class SubmitHomework {
    //前往提交
    @RequestMapping(value="/gotoSubmitHomework")
    public ModelAndView gotoSubmitHomework(@RequestParam("num") String num) {
        ModelAndView model = new ModelAndView("submitHomework2");
        model.addObject("num",num);
        return model;
    }

    //提交
    @RequestMapping(value="/submitHomework")
    public ModelAndView submitHomework(@RequestParam("num") String num,@RequestParam("homeworkContent") String homeworkContent,HttpSession session) {

        String currentName = (String) session.getAttribute("currentName");
        Mario mario=new Mario();
        String sql="insert into studentHomework values("+num+",'"+currentName+"','"+homeworkContent+"')";//定义查询语句
        int i=mario.executeUpdate(sql);//执行sql语句
        mario.closeConnection();

        if(i==1){
            ModelAndView model = new ModelAndView("submitHomeworkSuccess");
            return model;
        }else if(i==0){
            ModelAndView model = new ModelAndView("submitHomeworkFalse");
            return model;
        }
        return null;

    }
}
