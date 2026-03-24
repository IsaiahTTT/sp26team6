package com.project.lifeLvling.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.lifeLvling.entity.Provider;

@Repository
public interface ProviderRepository extends JpaRepository<Provider, Long> {
}
