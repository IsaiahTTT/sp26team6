package com.project.lifeLvling.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.lifeLvling.entity.Provider;
import com.project.lifeLvling.repository.ProviderRepository;

@Service
public class ProviderService {

    @Autowired
    private ProviderRepository repo;

    public Provider createProvider(Provider p) {
        return repo.save(p);
    }

    public List<Provider> getAllProviders() {
        return repo.findAll();
    }

    public Provider getProviderById(Long id) {
        return repo.findById(id).orElse(null);
    }

    public Provider updateProvider(Long id, Provider updated) {
        Optional<Provider> existing = repo.findById(id);
        if (existing.isPresent()) {
            Provider p = existing.get();
            p.setUsername(updated.getUsername());
            p.setEmail(updated.getEmail());
            return repo.save(p);
        }
        return null;
    }

    public void deleteProvider(Long id) {
        repo.deleteById(id);
    }
}
