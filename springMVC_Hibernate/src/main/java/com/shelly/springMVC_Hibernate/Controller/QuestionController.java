package com.shelly.springMVC_Hibernate.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shelly.springMVC_Hibernate.Entity.Question;
import com.shelly.springMVC_Hibernate.dao.Questionsdao;

@Controller
public class QuestionController {

	@Autowired
	Questionsdao qdao;

	@RequestMapping("/saveQuestion.htm")
	public ModelAndView saveQuestion(@ModelAttribute Question q) {
		System.out.println("Inside save questions!!!");
		qdao.saveQuestions(q);
		ModelAndView mv = new ModelAndView();
		return mv;

	}

	@RequestMapping("getQuestions.htm")
	@ResponseBody
	public String getQuestions() {
		List<Question> questions = qdao.getTestQuestions();

		System.out.println(questions);

		return questions.toString();
	}

	@RequestMapping("test.htm")
	public ModelAndView test() {
		ModelAndView mv = new ModelAndView("test.jsp");
		List<Question> questions = qdao.getTestQuestions();
		System.out.println(questions);
		mv.addObject("questionslist", questions);
		return mv;
	}

	@RequestMapping("/verify.htm")
	public ModelAndView verify(@RequestParam("1") String qid1, @RequestParam("2") String qid2,
			@RequestParam("3") String qid3) {
		System.out.println(qid1+qid2+qid3);
		ModelAndView mv;
		if(("None of these.").equalsIgnoreCase(qid2))
		{
			if(qid3.equalsIgnoreCase("None of these."))
			{
				System.out.println("not serious and need not to sit at home" + qid2 +":"+qid3);
				mv= new ModelAndView("NotSerious.jsp");
			}
			else
			{
				System.out.println("not serious but need to sit at home" + qid2 +":"+qid3);
				mv= new ModelAndView("Result.jsp");
			}
			
		}
		else
		{
			
				System.out.println(" serious !!" + qid2 +":"+qid3);
				mv= new ModelAndView("Serious.jsp");
			
		}
		
		
		return mv;
	}

}
