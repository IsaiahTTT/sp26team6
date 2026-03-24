package com.project.lifeLvling.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.lifeLvling.entity.Provider;
import com.project.lifeLvling.service.ProviderService;

@RestController
@RequestMapping("/api/providers")
public class ProviderController {

    @Autowired
    private ProviderService service;

    @PostMapping
    public ResponseEntity<Provider> create(@RequestBody Provider p) {
        return new ResponseEntity<>(service.createProvider(p), HttpStatus.CREATED);
    }

    @GetMapping
    public ResponseEntity<List<Provider>> getAll() {
        return new ResponseEntity<>(service.getAllProviders(), HttpStatus.OK);
    }
}