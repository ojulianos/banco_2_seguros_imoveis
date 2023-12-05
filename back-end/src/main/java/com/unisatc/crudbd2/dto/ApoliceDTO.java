package com.unisatc.crudbd2.dto;

import java.util.Date;
import java.util.Objects;

public class ApoliceDTO {
    private Integer apo_cod;
    private Integer apo_im_cod;
    private Integer apo_cli_cod;
    private Date apo_dt_cad;
    private Date apo_dt_alt;
    private Date apo_dt_inicio_vigencia;
    private Date apo_dt_fim_vigencia;
    private Float apo_valor_cobertura;
    private Float apo_valor_franquia;


    public ApoliceDTO() {
    }

    public ApoliceDTO(Integer apo_cod, Integer apo_im_cod, Integer apo_cli_cod, Date apo_dt_cad, Date apo_dt_alt, Date apo_dt_ini_vigencia, Date apo_dt_fim_vigencia, Float apo_valor_cobertura, Float apo_valor_franquia) {
        this.apo_cod = apo_cod;
        this.apo_im_cod = apo_im_cod;
        this.apo_cli_cod = apo_cli_cod;
        this.apo_dt_cad = apo_dt_cad;
        this.apo_dt_alt = apo_dt_alt;
        this.apo_dt_inicio_vigencia = apo_dt_ini_vigencia;
        this.apo_dt_fim_vigencia = apo_dt_fim_vigencia;
        this.apo_valor_cobertura = apo_valor_cobertura;
        this.apo_valor_franquia = apo_valor_franquia;
    }

    public Integer getApo_cod() {
        return apo_cod;
    }

    public void setApo_cod(Integer apo_cod) {
        this.apo_cod = apo_cod;
    }

    public Integer getApo_im_cod() {
        return apo_im_cod;
    }

    public void setApo_im_cod(Integer apo_im_cod) {
        this.apo_im_cod = apo_im_cod;
    }

    public Integer getApo_cli_cod() {
        return apo_cli_cod;
    }

    public void setApo_cli_cod(Integer apo_cli_cod) {
        this.apo_cli_cod = apo_cli_cod;
    }

    public Date getApo_dt_cad() {
        return apo_dt_cad;
    }

    public void setApo_dt_cad(Date apo_dt_cad) {
        this.apo_dt_cad = apo_dt_cad;
    }

    public Date getApo_dt_alt() {
        return apo_dt_alt;
    }

    public void setApo_dt_alt(Date apo_dt_alt) {
        this.apo_dt_alt = apo_dt_alt;
    }

    public Date getApo_dt_inicio_vigencia() {
        return apo_dt_inicio_vigencia;
    }

    public void setApo_dt_inicio_vigencia(Date apo_dt_inicio_vigencia) {
        this.apo_dt_inicio_vigencia = apo_dt_inicio_vigencia;
    }

    public Date getApo_dt_fim_vigencia() {
        return apo_dt_fim_vigencia;
    }

    public void setApo_dt_fim_vigencia(Date apo_dt_fim_vigencia) {
        this.apo_dt_fim_vigencia = apo_dt_fim_vigencia;
    }

    public Float getApo_valor_cobertura() {
        return apo_valor_cobertura;
    }

    public void setApo_valor_cobertura(Float apo_valor_cobertura) {
        this.apo_valor_cobertura = apo_valor_cobertura;
    }

    public Float getApo_valor_franquia() {
        return apo_valor_franquia;
    }

    public void setApo_valor_franquia(Float apo_valor_franquia) {
        this.apo_valor_franquia = apo_valor_franquia;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ApoliceDTO that = (ApoliceDTO) o;
        return Objects.equals(apo_cod, that.apo_cod) && Objects.equals(apo_im_cod, that.apo_im_cod) && Objects.equals(apo_cli_cod, that.apo_cli_cod) && Objects.equals(apo_dt_cad, that.apo_dt_cad) && Objects.equals(apo_dt_alt, that.apo_dt_alt) && Objects.equals(apo_dt_inicio_vigencia, that.apo_dt_inicio_vigencia) && Objects.equals(apo_dt_fim_vigencia, that.apo_dt_fim_vigencia) && Objects.equals(apo_valor_cobertura, that.apo_valor_cobertura) && Objects.equals(apo_valor_franquia, that.apo_valor_franquia);
    }

    @Override
    public int hashCode() {
        return Objects.hash(apo_cod, apo_im_cod, apo_cli_cod, apo_dt_cad, apo_dt_alt, apo_dt_inicio_vigencia, apo_dt_fim_vigencia, apo_valor_cobertura, apo_valor_franquia);
    }

    // outros métodos, se necessário
}