package com.unisatc.crudbd2.services;

import com.unisatc.crudbd2.model.Cliente;
import com.unisatc.crudbd2.repositories.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ClienteService {
    @Autowired
    ClienteRepository repository;
    public List<Cliente> findAll() {
        return repository.findAll();
    }
    public Cliente findById(Integer id) {
        return repository.findById(id).orElseThrow(RuntimeException::new);
    }
    public Cliente create (Cliente cliente) {
        return repository.save(cliente);
    }
    public Cliente update(Cliente cliente) {
        Cliente entity = repository.findById(cliente.getCli_cod()).orElseThrow(RuntimeException::new);
        entity.setCli_dt_cad(cliente.getCli_dt_cad());
        entity.setCli_dt_alt(cliente.getCli_dt_alt());
        entity.setCli_nome(cliente.getCli_nome());
        entity.setCli_documento(cliente.getCli_documento());
        entity.setCli_documento2(cliente.getCli_documento2());
        entity.setCli_logradouro(cliente.getCli_logradouro());
        entity.setCli_bairro(cliente.getCli_bairro());
        entity.setCli_cidade(cliente.getCli_cidade());
        entity.setCli_uf(cliente.getCli_uf());
        entity.setCli_numero(cliente.getCli_numero());
        entity.setCli_telefone(cliente.getCli_telefone());
        entity.setCli_telefone2(cliente.getCli_telefone2());
        entity.setCli_pai(cliente.getCli_pai());
        entity.setCli_mae(cliente.getCli_mae());
        entity.setCli_rendimento(cliente.getCli_rendimento());
        return repository.save(entity);
    }
    public void delete(Integer id) {
        Cliente cliente = repository.findById(id).orElseThrow(RuntimeException::new);
        repository.delete(cliente);
    }
}
