package com.project.lifeLvling.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


@Controller
public class AppUiController {
    
    @GetMapping("/")
    public String showHomePage() {
        return "homepage";
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "loginpage";
    }


    @GetMapping("/signup")
    public String showSignupPage() {
        return "signuppage";
    }

    @GetMapping("/search")
    public String showSearchPage() {
        return "searchpage";
    }

}
