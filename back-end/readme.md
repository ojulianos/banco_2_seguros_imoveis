### Back End

Escrito em java com Maven e Spring Bot

#### [Configurações](back-end/src/main/resources/application.yml)
Para executar o projeto é necessário atualizar as configurações no arquivo acima modificando as informações de **url, username  e password**

#### Lista de Rotas

- ##### Apolices
    - [get] /apolices - Lista todas as apolices
    - [post] /apolices - Cadastrar uma nova apolice
    - [put] /apolices - Atualiza uma apolice
    - [get] /apolices/{id} - Traz o registro de uma apolice
    - [delete] /apolices/{id} - Exclui uma apolice

- ##### Clientes
    - [get] /clientes - Lista todas as clientes
    - [post] /clientes - Cadastrar uma nova cliente
    - [put] /clientes - Atualiza uma cliente
    - [get] /clientes/{id} - Traz o registro de uma cliente
    - [delete] /clientes/{id} - Exclui uma cliente

