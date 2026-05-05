package com.project.lifeLvling.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.project.lifeLvling.entity.Provider;
import com.project.lifeLvling.repository.ProviderRepository;

@Service
public class ProviderService {

    private final ProviderRepository repo;

    public ProviderService(ProviderRepository repo) {
        this.repo = repo;
    }

    public Provider createProvider(Provider provider) {
        return repo.save(provider);
    }

    public List<Provider> getAllProviders() {
        return repo.findAll();
    }

    public Provider getProviderById(Long id) {
        return repo.findById(id).orElse(null);
    }

    public Provider getProviderByEmail(String email) {
        return repo.findByEmail(email);
    }

    public Provider updateProvider(Long id, Provider updated) {
        Optional<Provider> existing = repo.findById(id);

        if (existing.isPresent()) {
            Provider provider = existing.get();

            provider.setUsername(updated.getUsername());
            provider.setEmail(updated.getEmail());
            provider.setPassword(updated.getPassword());
            provider.setCertifications(updated.getCertifications());
            provider.setExerciseType(updated.getExerciseType());

            return repo.save(provider);
        }

        return null;
    }

    public void deleteProvider(Long id) {
        repo.deleteById(id);
    }
}
