-- CRIAÇÃO DO BANCO DE DADOS
create database if not exists oficina_abr3u;
use oficina_abr3u;

-- TABELA CLIENTE
create table cliente (
    id_cliente int primary key auto_increment,
    tipo_cliente enum('pessoa_fisica','pessoa_juridica') default 'pessoa_fisica' not null,
    documento varchar(20) unique not null,
    nome_completo varchar(255) not null,
    telefone varchar(20),
    email varchar(100),
    endereco varchar(255)
);

-- TABELA VEICULO
create table veiculo (
    id_veiculo int primary key auto_increment,
    placa char(7) unique not null,
    modelo varchar(50) not null,
    ano year,
    id_cliente int not null,
    constraint fk_vei_id_cliente foreign key (id_cliente) references cliente(id_cliente)
);

-- TABELA FUNCIONARIO
create table funcionario (
    id_funcionario int primary key auto_increment,
    nome varchar(100) not null,
    cargo varchar(50),
    salario decimal(10,2) not null
);

-- TABELA SERVICO
create table servico (
    id_servico int primary key auto_increment,
    descricao varchar(100) not null,
    valor decimal(10,2) not null
);

-- TABELA PECA
create table peca (
    id_peca int primary key auto_increment,
    nome varchar(100) not null,
    preco decimal(10,2) not null,
    estoque int not null
);

-- TABELA ORDEM DE SERVICO
create table ordem_servico (
    id_os int primary key auto_increment,
    data_abertura date not null,
    data_fechamento date,
    status enum('aberta','em_andamento','fechada','cancelada') default 'aberta' not null,
    id_veiculo int not null,
    id_cliente int not null,
    constraint fk_os_id_veiculo foreign key (id_veiculo) references veiculo(id_veiculo),
    constraint fk_os_id_cliente foreign key (id_cliente) references cliente(id_cliente)
);

-- TABELA OS_SERVICO
create table os_servico (
    id_os int,
    id_servico int,
    id_funcionario int,
    quantidade int default 1,
    valor_unitario decimal(10,2) not null,
    primary key (id_os, id_servico, id_funcionario),
    constraint fk_os_ser_id_os foreign key (id_os) references ordem_servico(id_os),
    constraint fk_os_ser_id_servico foreign key (id_servico) references servico(id_servico),
    constraint fk_os_ser_id_funcionario foreign key (id_funcionario) references funcionario(id_funcionario)
);

-- TABELA OS_PECA
create table os_peca (
    id_os int,
    id_peca int,
    quantidade int not null,
    valor_unitario decimal(10,2) not null,
    primary key (id_os, id_peca),
    constraint fk_os_pe_id_os foreign key (id_os) references ordem_servico(id_os),
    constraint fk_os_pe_id_peca foreign key (id_peca) references peca(id_peca)
);

-- TABELA PAGAMENTO
create table pagamento (
    id_pagamento int primary key auto_increment,
    id_os int not null,
    data_pagamento date not null,
    valor_total decimal(10,2) not null,
    forma_pagamento enum('dinheiro','cartao_credito','cartao_debito','pix') not null,
    status_pagamento enum('pendente','pago','cancelado') default 'pendente',
    constraint fk_pg_id_os foreign key (id_os) references ordem_servico(id_os)
);