package com.unisatc.crudbd2.controllers;

import com.unisatc.crudbd2.model.Cliente;
import com.unisatc.crudbd2.services.ClienteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/clientes")
public class ClienteController {
    @Autowired
    ClienteService service;
    @GetMapping(value ="/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public Cliente findById(@PathVariable(value = "id") Integer id) {
        return service.findById(id);
    }
    @GetMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Cliente> findAll() {
        return service.findAll();
    }
    @PostMapping(produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    public Cliente create(@RequestBody Cliente cliente) {
        return service.create(cliente);
    }
    @PutMapping(produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    public Cliente update(@RequestBody Cliente cliente) {
        return service.update(cliente);
    }
    @DeleteMapping(value = "/{id}")
    public ResponseEntity<?> delete(@PathVariable(value = "id") Integer id) {
        service.delete(id);
        return ResponseEntity.noContent().build();
    }
}
