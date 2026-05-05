package com.project.lifeLvling.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.lifeLvling.entity.Provider;

public interface ProviderRepository extends JpaRepository<Provider, Long> {
    Provider findByEmail(String email);
}