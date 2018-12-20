package com.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

    @RequestMapping("/showForm")
    public String showForm(){
        return "helloWorld-form";
    }

    @RequestMapping("/processForm")
    public String processForm(){

        return "helloWorld";
    }

    /* new controller to read form data and add to the model*/

    @RequestMapping("/processFormVersionThree")
    public String processFormVersionThree(@RequestParam("studentName") String theName, Model model){

        theName=theName.toUpperCase();

        String result ="Hey My Friend from v3! "+ theName;

        //add message to the model

        model.addAttribute("message",result);


        return "helloWorld";
    }

    @RequestMapping("/letsShoutDude")
    public String letsShoutDude(HttpServletRequest request, Model model){


        // read the request parameter from html form
        String theName= request.getParameter("studentName");

        theName=theName.toUpperCase();

        String result ="Yo! "+ theName;

        //add message to the model

        model.addAttribute("message",result);


        return "helloWorld";
    }

}
