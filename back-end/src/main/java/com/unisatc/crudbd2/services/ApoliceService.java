package com.unisatc.crudbd2.services;

import com.unisatc.crudbd2.dto.ApoliceDTO;
import com.unisatc.crudbd2.model.Apolice;
import com.unisatc.crudbd2.model.Cliente;
import com.unisatc.crudbd2.model.Imoveis;
import com.unisatc.crudbd2.repositories.ApoliceRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ApoliceService {

    @Autowired
    ApoliceRepository repository;

    @Autowired
    ImoveisService imoveisService;

    @Autowired
    ClienteService clienteService;

    @Autowired
    ModelMapper modelMapper;

    public List<ApoliceDTO> findAll() {
        List<Apolice> apolices = repository.findAll();
        return apolices.stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    public ApoliceDTO findById(Integer id) {
        Apolice apolice = repository.findById(id).orElseThrow(RuntimeException::new);
        return convertToDTO(apolice);
    }

    public ApoliceDTO create(ApoliceDTO apoliceDTO) {
        Apolice apolice = convertToEntity(apoliceDTO);
        return convertToDTO(repository.save(apolice));
    }

    public ApoliceDTO update(ApoliceDTO apoliceDTO) {
        Apolice entity = repository.findById(apoliceDTO.getApo_cod()).orElseThrow(RuntimeException::new);
        Apolice apolice = convertToEntity(apoliceDTO);
        entity.setApo_im_cod(apolice.getApo_im_cod());
        entity.setApo_cli_cod(apolice.getApo_cli_cod());
        entity.setApo_dt_cad(apolice.getApo_dt_cad());
        entity.setApo_dt_alt(apolice.getApo_dt_alt());
        entity.setApo_dt_inicio_vigencia(apolice.getApo_dt_inicio_vigencia());
        entity.setApo_dt_fim_vigencia(apolice.getApo_dt_fim_vigencia());
        entity.setApo_valor_cobertura(apolice.getApo_valor_cobertura());
        entity.setApo_valor_franquia(apolice.getApo_valor_franquia());

        return convertToDTO(repository.save(entity));
    }

    public void delete(Integer id) {
        Apolice apolice = repository.findById(id).orElseThrow(RuntimeException::new);
        repository.delete(apolice);
    }

    private ApoliceDTO convertToDTO(Apolice apolice) {
        return modelMapper.map(apolice, ApoliceDTO.class);
    }

    private Apolice convertToEntity(ApoliceDTO apoliceDTO) {
        Imoveis imovel = imoveisService.findById(apoliceDTO.getApo_im_cod());
        Cliente cliente = clienteService.findById(apoliceDTO.getApo_cli_cod());
        Apolice apolice = new Apolice();

        apolice.setApo_cod(apoliceDTO.getApo_cod());
        apolice.setApo_im_cod(imovel);
        apolice.setApo_cli_cod(cliente);
        apolice.setApo_dt_cad(apoliceDTO.getApo_dt_cad());
        apolice.setApo_dt_alt(apoliceDTO.getApo_dt_alt());
        apolice.setApo_dt_inicio_vigencia(apoliceDTO.getApo_dt_inicio_vigencia());
        apolice.setApo_dt_fim_vigencia(apoliceDTO.getApo_dt_fim_vigencia());
        apolice.setApo_valor_cobertura(apoliceDTO.getApo_valor_cobertura());
        apolice.setApo_valor_franquia(apoliceDTO.getApo_valor_franquia());

        return apolice;
    }

}


