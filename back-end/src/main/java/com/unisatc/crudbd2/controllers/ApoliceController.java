package com.unisatc.crudbd2.controllers;

import com.unisatc.crudbd2.model.Apolice;
import com.unisatc.crudbd2.services.ApoliceService;
import org.hibernate.event.internal.DefaultPersistOnFlushEventListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/apolices")
public class ApoliceController {

    @Autowired
    ApoliceService service;

    @GetMapping(value ="/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public Apolice findById(@PathVariable(value = "id") Integer id){
        return service.findById(id);
    }

    @GetMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Apolice> findAll(){
        return service.findAll();
    }

    @PostMapping(produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    public Apolice create(@RequestBody Apolice apolice){
        return service.create(apolice);
    }

    @PutMapping(produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    public Apolice update(@RequestBody Apolice apolice){
        return service.update(apolice);
    }

    @DeleteMapping(value = "/{id}")
    public ResponseEntity<?> delete(@PathVariable(value = "id") Integer id){
        service.delete(id);
        return ResponseEntity.noContent().build();
    }


}





