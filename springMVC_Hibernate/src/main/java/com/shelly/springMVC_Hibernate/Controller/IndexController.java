package com.shelly.springMVC_Hibernate.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shelly.springMVC_Hibernate.Entity.Feedback;
import com.shelly.springMVC_Hibernate.dao.Feedbackdao;

@Controller
public class IndexController {
	
	@Autowired
	Feedbackdao fdo;
	
 //   Feedback fb;
	
	@RequestMapping("/add")
	public String home() {
		System.out.println("inside home method");
		return "index.jsp";

	}

	@RequestMapping("/feedback.htm")
	public String feedback() {
		System.out.println("inside feedback method");
		return "feedback.jsp";

	}
	/*public String addFeedback(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("message") String message, @RequestParam("regarding") String regarding, @RequestParam("code") String code,
			@RequestParam("rating") int rating)*/

	@RequestMapping("/addFeedback")
	public ModelAndView addFeedback(@ModelAttribute Feedback fb)
	 {
		//fb = new Feedback(name,email,regarding,code,rating,message);
		System.out.println("inside feedback!!");
		System.out.println("Request object is" + fb);
		fdo.addFeedback(fb);
		ModelAndView mv = new ModelAndView("feedbacks.jsp");
		mv.addObject("feedbacks", fb);
        return mv;
		

	}
	
	@RequestMapping("/getFeedback")
	public ModelAndView getFeedbacks()
	 {
		//fb = new Feedback(name,email,regarding,code,rating,message);
		
		System.out.println("Inside getfeedbacks");
		ModelAndView mv = new ModelAndView("feedbacks.jsp");
		mv.addObject("feedbacks", fdo.getFeedbacks());
        return mv;
	}
	
	@RequestMapping("/question.htm")
	public String addQuestions()
	{
		System.out.println("Inside addQuestion!!!");
		return "Questions.jsp";
	}

}
