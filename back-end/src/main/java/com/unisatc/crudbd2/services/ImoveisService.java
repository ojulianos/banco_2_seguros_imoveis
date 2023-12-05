package com.unisatc.crudbd2.services;

import com.unisatc.crudbd2.model.Imoveis;
import com.unisatc.crudbd2.repositories.ImoveisRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImoveisService {

    @Autowired
    ImoveisRepository repository;

    public Imoveis findById(Integer id){
        return repository.findById(id).orElseThrow(() -> new RuntimeException("Imóvel não encontrado"));
    }
}
