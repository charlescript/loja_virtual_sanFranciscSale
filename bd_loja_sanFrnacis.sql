CREATE DATABASE LOJA_SAN_FRANCIS;

USE LOJA_SAN_FRANCIS;

CREATE TABLE PRODUTO(
    cd_produto int(11) primary key not null auto_increment,
    fk_cd_marca_produto int(11) not null,
    fk_cd_voto int(11) not null,
    fk_cd_imagem int(11) not null,
    fk_cd_promocao int(11),
    cd_preco float (11,2) not null,
    ds_produto varchar(200) not null  
);

CREATE TABLE MARCA (
    cd_marca int(11) primary key not null auto_increment,
    fk_cd_produto int(11) not null,
    nm_marca varchar(50),
);

CREATE TABLE PROMOCAO (
    cd_promocao int(11) not null auto_increment,
    fk_cd_produto int(11),
    cd_preco float(11,2)
);

CREATE TABLE IMAGENS (
    cd_imagem int(11) primary key not null auto_increment,
    fk_cd_produto int(11),
    imagem BLOB
);

create table VOTOS(
  cd_voto int(11) not null auto_increment,
  fk_cd_produto int(11),
  voto int(1),  /*Voto poderá ser de 1 a 5*/
  qt_voto int(11)   /*Quantidade de votos*/
);


CREATE TABLE CARRINHO(
    cd_carrinho int(11) primary key not null,
    fk_cd_produto int(11) not null,
    fk_cd_usuario int(11)
);

CREATE TABLE USUARIO(
    cd_usuario int(11) primary key not null auto_increment,
    fk_cd_endereco_usuario int(11),
    nm_usuario varchar(50) not null,
    nm_sobrenome varchar(50) not null,
    cd_cpf_usuario int(11)
);

CREATE TABLE ENDERECO(
    cd_endereco int(11) primary key not null auto_increment,
    fk_cd_usuario int(11),
    sg_estado varchar(2),
    cd_cep varchar(10),
    nm_cidade varchar(50),
    nm_logradouro varchar(150),
    cd_numero_logradouro varchar(20),
    ds_descricao_local varchar(150)
);





