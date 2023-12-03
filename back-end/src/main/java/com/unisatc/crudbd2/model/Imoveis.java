package com.unisatc.crudbd2.model;

import jakarta.persistence.*;

@Entity
@Table(name = "imoveis")
public class Imoveis {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer im_cod;
    private Double im_valor;
    private String im_logradouro;
    private String im_bairro;
    private String im_cidade;
    private String im_uf;
    private Integer im_numero;
    private String im_tipo;
    private Double im_val_iptu;

    public Imoveis(Double im_valor, String im_logradouro, String im_bairro, String im_cidade, String im_uf, Integer im_numero, String im_tipo, Double im_val_iptu) {
        this.im_valor = im_valor;
        this.im_logradouro = im_logradouro;
        this.im_bairro = im_bairro;
        this.im_cidade = im_cidade;
        this.im_uf = im_uf;
        this.im_numero = im_numero;
        this.im_tipo = im_tipo;
        this.im_val_iptu = im_val_iptu;
    }

    public Integer getIm_cod() {
        return im_cod;
    }

    public void setIm_cod(Integer im_cod) {
        this.im_cod = im_cod;
    }

    public Double getIm_valor() {
        return im_valor;
    }

    public void setIm_valor(Double im_valor) {
        this.im_valor = im_valor;
    }

    public String getIm_logradouro() {
        return im_logradouro;
    }

    public void setIm_logradouro(String im_logradouro) {
        this.im_logradouro = im_logradouro;
    }

    public String getIm_bairro() {
        return im_bairro;
    }

    public void setIm_bairro(String im_bairro) {
        this.im_bairro = im_bairro;
    }

    public String getIm_cidade() {
        return im_cidade;
    }

    public void setIm_cidade(String im_cidade) {
        this.im_cidade = im_cidade;
    }

    public String getIm_uf() {
        return im_uf;
    }

    public void setIm_uf(String im_uf) {
        this.im_uf = im_uf;
    }

    public Integer getIm_numero() {
        return im_numero;
    }

    public void setIm_numero(Integer im_numero) {
        this.im_numero = im_numero;
    }

    public String getIm_tipo() {
        return im_tipo;
    }

    public void setIm_tipo(String im_tipo) {
        this.im_tipo = im_tipo;
    }

    public Double getIm_val_iptu() {
        return im_val_iptu;
    }

    public void setIm_val_iptu(Double im_val_iptu) {
        this.im_val_iptu = im_val_iptu;
    }
}
