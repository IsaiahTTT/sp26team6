package com.project.lifeLvling.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.lifeLvling.entity.Provider;
import com.project.lifeLvling.service.ProviderService;

@Controller
public class ProviderUIController {

    private final ProviderService service;

    public ProviderUIController(ProviderService service) {
        this.service = service;
    }

    @GetMapping("/instructor")
    public String instructorLanding() {
        return "provider-login";
    }

    @GetMapping("/provider-login")
    public String loginPage() {
        return "provider-login";
    }

    @PostMapping("/provider-login")
    public String login(@RequestParam String email, @RequestParam String password) {
        Provider provider = service.getProviderByEmail(email);

        if (provider != null && provider.getPassword() != null && provider.getPassword().equals(password)) {
            return "redirect:/ui/providers/dashboard/" + provider.getProviderId();
        }

        return "redirect:/provider-login?error=true";
    }

    @GetMapping("/provider-signup")
    public String signupPage() {
        return "provider-signup";
    }

    @PostMapping("/provider-signup")
    public String signup(@RequestParam String username,
                         @RequestParam String email,
                         @RequestParam String password,
                         @RequestParam(required = false) String certifications,
                         @RequestParam(required = false) String exerciseType) {

        Provider provider = new Provider();
        provider.setUsername(username);
        provider.setEmail(email);
        provider.setPassword(password);
        provider.setCertifications(certifications);
        provider.setExerciseType(exerciseType);

        Provider saved = service.createProvider(provider);
        return "redirect:/ui/providers/dashboard/" + saved.getProviderId();
    }

    @GetMapping("/ui/providers/dashboard/{providerId}")
    public String dashboard(@PathVariable Long providerId, Model model) {
        Provider provider = service.getProviderById(providerId);
        model.addAttribute("provider", provider);
        return "provider-dashboard";
    }

    @GetMapping("/ui/providers")
public String list(@RequestParam(required = false) Long providerId, Model model) {
    model.addAttribute("providers", service.getAllProviders());
    model.addAttribute("providerId", providerId);

    if (providerId != null) {
        model.addAttribute("currentProvider", service.getProviderById(providerId));
    }

    return "provider-list";
}

    @GetMapping("/ui/providers/add")
    public String form(Model model) {
        model.addAttribute("provider", new Provider());
        return "provider-form";
    }

    @PostMapping("/ui/providers")
    public String create(Provider provider) {
        Provider saved = service.createProvider(provider);
        return "redirect:/ui/providers/dashboard/" + saved.getProviderId();
    }

    @GetMapping("/ui/providers/edit/{providerId}")
    public String editProvider(@PathVariable Long providerId, Model model) {
        model.addAttribute("provider", service.getProviderById(providerId));
        return "provider-edit";
    }

    @PostMapping("/ui/providers/update/{providerId}")
    public String updateProvider(@PathVariable Long providerId, Provider provider) {
        service.updateProvider(providerId, provider);
        return "redirect:/ui/providers/dashboard/" + providerId;
    }

    @PostMapping("/ui/providers/delete/{providerId}")
    public String deleteProvider(@PathVariable Long providerId) {
        service.deleteProvider(providerId);
        return "redirect:/";
    }
}
