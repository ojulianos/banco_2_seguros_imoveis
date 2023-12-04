package com.unisatc.crudbd2.model;

import jakarta.persistence.*;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "clientes")
public class Cliente {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer cli_cod;
    private Date cli_dt_cad;
    private Date cli_dt_alt;
    private String cli_nome;
    private String cli_documento;
    private String cli_documento2;
    private String cli_logradouro;
    private String cli_bairro;
    private String cli_cidade;
    private String cli_uf;
    private Integer cli_numero;
    private String cli_telefone;
    private String cli_telefone2;
    private String cli_pai;
    private String cli_mae;
    private Float cli_rendimento;

    @OneToMany(mappedBy = "apo_cli_cod")
    private List<Apolice> apolices;

    public Cliente() {
    }

    public Cliente(Integer cli_cod, Date cli_dt_cad, Date cli_dt_alt, String cli_nome, String cli_documento, String cli_documento2, String cli_logradouro, String cli_bairro, String cli_cidade, String cli_uf, Integer cli_numero, String cli_telefone, String cli_telefone2, String cli_pai, String cli_mae, Float cli_rendimento, List<Apolice> apolices) {
        this.cli_cod = cli_cod;
        this.cli_dt_cad = cli_dt_cad;
        this.cli_dt_alt = cli_dt_alt;
        this.cli_nome = cli_nome;
        this.cli_documento = cli_documento;
        this.cli_documento2 = cli_documento2;
        this.cli_logradouro = cli_logradouro;
        this.cli_bairro = cli_bairro;
        this.cli_cidade = cli_cidade;
        this.cli_uf = cli_uf;
        this.cli_numero = cli_numero;
        this.cli_telefone = cli_telefone;
        this.cli_telefone2 = cli_telefone2;
        this.cli_pai = cli_pai;
        this.cli_mae = cli_mae;
        this.cli_rendimento = cli_rendimento;
        this.apolices = apolices;
    }

    public Integer getCli_cod() {
        return cli_cod;
    }

    public void setCli_cod(Integer cli_cod) {
        this.cli_cod = cli_cod;
    }

    public Date getCli_dt_cad() {
        return cli_dt_cad;
    }

    public void setCli_dt_cad(Date cli_dt_cad) {
        this.cli_dt_cad = cli_dt_cad;
    }

    public Date getCli_dt_alt() {
        return cli_dt_alt;
    }

    public void setCli_dt_alt(Date cli_dt_alt) {
        this.cli_dt_alt = cli_dt_alt;
    }

    public String getCli_nome() {
        return cli_nome;
    }

    public void setCli_nome(String cli_nome) {
        this.cli_nome = cli_nome;
    }

    public String getCli_documento() {
        return cli_documento;
    }

    public void setCli_documento(String cli_documento) {
        this.cli_documento = cli_documento;
    }

    public String getCli_documento2() {
        return cli_documento2;
    }

    public void setCli_documento2(String cli_documento2) {
        this.cli_documento2 = cli_documento2;
    }

    public String getCli_logradouro() {
        return cli_logradouro;
    }

    public void setCli_logradouro(String cli_logradouro) {
        this.cli_logradouro = cli_logradouro;
    }

    public String getCli_bairro() {
        return cli_bairro;
    }

    public void setCli_bairro(String cli_bairro) {
        this.cli_bairro = cli_bairro;
    }

    public String getCli_cidade() {
        return cli_cidade;
    }

    public void setCli_cidade(String cli_cidade) {
        this.cli_cidade = cli_cidade;
    }

    public String getCli_uf() {
        return cli_uf;
    }

    public void setCli_uf(String cli_uf) {
        this.cli_uf = cli_uf;
    }

    public Integer getCli_numero() {
        return cli_numero;
    }

    public void setCli_numero(Integer cli_numero) {
        this.cli_numero = cli_numero;
    }

    public String getCli_telefone() {
        return cli_telefone;
    }

    public void setCli_telefone(String cli_telefone) {
        this.cli_telefone = cli_telefone;
    }

    public String getCli_telefone2() {
        return cli_telefone2;
    }

    public void setCli_telefone2(String cli_telefone2) {
        this.cli_telefone2 = cli_telefone2;
    }

    public String getCli_pai() {
        return cli_pai;
    }

    public void setCli_pai(String cli_pai) {
        this.cli_pai = cli_pai;
    }

    public String getCli_mae() {
        return cli_mae;
    }

    public void setCli_mae(String cli_mae) {
        this.cli_mae = cli_mae;
    }

    public Float getCli_rendimento() {
        return cli_rendimento;
    }

    public void setCli_rendimento(Float cli_rendimento) {
        this.cli_rendimento = cli_rendimento;
    }

    public List<Apolice> getApolices() {
        return apolices;
    }

    public void setApolices(List<Apolice> apolices) {
        this.apolices = apolices;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cliente cliente = (Cliente) o;
        return Objects.equals(cli_cod, cliente.cli_cod) && Objects.equals(cli_dt_cad, cliente.cli_dt_cad) && Objects.equals(cli_dt_alt, cliente.cli_dt_alt) && Objects.equals(cli_nome, cliente.cli_nome) && Objects.equals(cli_documento, cliente.cli_documento) && Objects.equals(cli_documento2, cliente.cli_documento2) && Objects.equals(cli_logradouro, cliente.cli_logradouro) && Objects.equals(cli_bairro, cliente.cli_bairro) && Objects.equals(cli_cidade, cliente.cli_cidade) && Objects.equals(cli_uf, cliente.cli_uf) && Objects.equals(cli_numero, cliente.cli_numero) && Objects.equals(cli_telefone, cliente.cli_telefone) && Objects.equals(cli_telefone2, cliente.cli_telefone2) && Objects.equals(cli_pai, cliente.cli_pai) && Objects.equals(cli_mae, cliente.cli_mae) && Objects.equals(cli_rendimento, cliente.cli_rendimento) && Objects.equals(apolices, cliente.apolices);
    }

    @Override
    public int hashCode() {
        return Objects.hash(cli_cod, cli_dt_cad, cli_dt_alt, cli_nome, cli_documento, cli_documento2, cli_logradouro, cli_bairro, cli_cidade, cli_uf, cli_numero, cli_telefone, cli_telefone2, cli_pai, cli_mae, cli_rendimento, apolices);
    }
}



