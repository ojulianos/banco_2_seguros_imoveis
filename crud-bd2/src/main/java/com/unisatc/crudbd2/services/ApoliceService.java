package com.unisatc.crudbd2.services;

import com.unisatc.crudbd2.model.Apolice;
import com.unisatc.crudbd2.repositories.ApoliceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApoliceService {

    @Autowired
    ApoliceRepository repository;

    public List<Apolice> findAll(){
        return repository.findAll();
    }

    public Apolice findById(Integer id) {
        return repository.findById(id).orElseThrow(RuntimeException::new);
    }

    public Apolice create(Apolice apolice){
        return repository.save(apolice);
    }

    public Apolice update(Apolice apolice){
        Apolice entity = repository.findById(apolice.getApo_cod()).orElseThrow(RuntimeException::new);
        entity.setApo_im_cod( apolice.getApo_im_cod());
        entity.setApo_cli_cod(apolice.getApo_cli_cod());
        entity.setApo_dt_cad(apolice.getApo_dt_cad());
        entity.setApo_dt_alt(apolice.getApo_dt_alt());
        entity.setApo_dt_ini_vigencia(apolice.getApo_dt_ini_vigencia());
        entity.setApo_dt_fim_vigencia(apolice.getApo_dt_fim_vigencia());
        entity.setApo_valor_cobertura(apolice.getApo_valor_cobertura());
        entity.setApo_valor_franquia(apolice.getApo_valor_franquia());

        return repository.save(entity);

    }

    public void delete(Integer id){
        Apolice apolice = repository.findById(id).orElseThrow(RuntimeException::new);
        repository.delete(apolice);
    }

}


