package com.project.lifeLvling.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.lifeLvling.entity.Provider;
import com.project.lifeLvling.service.ProviderService;

@Controller
@RequestMapping("/ui/providers")
public class ProviderUIController {

    private final ProviderService service;

    public ProviderUIController(ProviderService service) {
        this.service = service;
    }

    @GetMapping
    public String list(Model model) {
        model.addAttribute("providers", service.getAllProviders());
        return "provider-list";
    }

    @GetMapping("/add")
    public String form(Model model) {
        model.addAttribute("provider", new Provider());
        return "provider-form";
    }

    @PostMapping
    public String create(Provider provider) {
        service.createProvider(provider);
        return "redirect:/ui/providers";
    }
}