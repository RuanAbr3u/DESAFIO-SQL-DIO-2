-- INSERÇÃO DE CLIENTES
insert into cliente (tipo_cliente, documento, nome_completo, telefone, email, endereco) values
('pessoa_fisica','12345678901','Ruan de Abreu Santos de Paula','(71)98765-4321','ruan.santos@email.com','Rua A, 123, São Gonçalo dos Campos, BA'),
('pessoa_fisica','23456789012','Mariana Oliveira','(71)91234-5678','mariana.oliveira@email.com','Rua B, 456, Salvador, BA'),
('pessoa_fisica','34567890123','Carlos Souza','(71)99876-5432','carlos.souza@email.com','Rua C, 789, Feira de Santana, BA'),
('pessoa_fisica','45678901234','Fernanda Lima','(71)98765-1234','fernanda.lima@email.com','Rua D, 101, São Gonçalo dos Campos, BA'),
('pessoa_fisica','56789012345','Paulo Ferreira','(71)97654-3210','paulo.ferreira@email.com','Rua E, 202, Salvador, BA'),
('pessoa_fisica','67890123456','Juliana Costa','(71)96543-2109','juliana.costa@email.com','Rua F, 303, Feira de Santana, BA'),
('pessoa_fisica','78901234567','André Martins','(71)95432-1098','andre.martins@email.com','Rua G, 404, São Gonçalo dos Campos, BA'),
('pessoa_fisica','89012345678','Aline Rocha','(71)94321-0987','aline.rocha@email.com','Rua H, 505, Salvador, BA'),
('pessoa_fisica','90123456789','Rafael Almeida','(71)93210-9876','rafael.almeida@email.com','Rua I, 606, Feira de Santana, BA'),
('pessoa_fisica','01234567890','Larissa Pinto','(71)92109-8765','larissa.pinto@email.com','Rua J, 707, São Gonçalo dos Campos, BA'),
('pessoa_juridica','11222333000101','Auto Pecas Brasil','(71)3344-5566','contato@autopecasbrasil.com','Av. Principal, 1000, Salvador, BA'),
('pessoa_juridica','22333444000102','Oficina Mecanica Alfa','(71)4455-6677','contato@oficinaalfa.com','Av. Secundaria, 2000, Feira de Santana, BA'),
('pessoa_juridica','33444555000103','Loja de Carros Beta','(71)5566-7788','contato@lojacarrosbeta.com','Av. Central, 3000, São Gonçalo dos Campos, BA'),
('pessoa_juridica','44555666000104','Servicos Automotivos Gama','(71)6677-8899','contato@gamaauto.com','Av. Industrial, 4000, Salvador, BA'),
('pessoa_juridica','55666777000105','Oficina Delta','(71)7788-9900','contato@oficinadelta.com','Rua Delta, 5050, Feira de Santana, BA'),
('pessoa_fisica','13579135791','Eduardo Nascimento','(71)91011-2233','eduardo.nascimento@email.com','Rua K, 808, São Gonçalo dos Campos, BA'),
('pessoa_fisica','24680246802','Camila Menezes','(71)92022-3344','camila.menezes@email.com','Rua L, 909, Salvador, BA'),
('pessoa_fisica','35791357913','Lucas Carvalho','(71)93033-4455','lucas.carvalho@email.com','Rua M, 1010, Feira de Santana, BA'),
('pessoa_fisica','46802468024','Patricia Gomes','(71)94044-5566','patricia.gomes@email.com','Rua N, 1111, São Gonçalo dos Campos, BA'),
('pessoa_fisica','57913579135','Thiago Ribeiro','(71)95055-6677','thiago.ribeiro@email.com','Rua O, 1212, Salvador, BA'),
('pessoa_fisica','68024680246','Vanessa Souza','(71)96066-7788','vanessa.souza@email.com','Rua P, 1313, Feira de Santana, BA'),
('pessoa_fisica','79135791357','Gustavo Lima','(71)97077-8899','gustavo.lima@email.com','Rua Q, 1414, São Gonçalo dos Campos, BA'),
('pessoa_fisica','80246802468','Isabela Fernandes','(71)98088-9900','isabela.fernandes@email.com','Rua R, 1515, Salvador, BA');

-- INSERÇÃO DE VEÍCULOS
insert into veiculo (placa, modelo, ano, id_cliente) values
('ABC1234','Gol','2015',1),
('DEF5678','Fiesta','2018',2),
('GHI9012','Onix','2020',3),
('JKL3456','Civic','2017',4),
('MNO7890','HB20','2019',5),
('PQR1234','Corolla','2021',6),
('STU5678','Prisma','2016',7),
('VWX9012','Focus','2015',8),
('YZA3456','Golf','2018',9),
('BCD7890','Sandero','2020',10),
('EFG1234','EcoSport','2019',11),
('HIJ5678','Tracker','2021',12),
('KLM9012','Cruze','2017',13),
('NOP3456','Argo','2018',14),
('QRS7890','Fit','2016',15),
('TUV1234','Versa','2015',16),
('WXY5678','Ka','2019',17),
('ZAB9012','Spin','2020',18),
('CDE3456','S10','2018',19),
('FGH7890','HR-V','2021',20),
('IJK1234','Kwid','2019',21),
('LMN5678','Etios','2017',22),
('OPQ9012','Astra','2016',23);

-- INSERÇÃO DE FUNCIONÁRIOS
insert into funcionario (nome, cargo, salario) values
('Rafael Souza','mecanico',3500.00),
('Mariana Paula','recepcionista',2500.00),
('Carlos Pereira','supervisor',5000.00),
('Juliana Costa','mecanica',3600.00),
('Andre Santos','eletricista',3800.00),
('Aline Rocha','atendente',2400.00),
('Paulo Ferreira','mecanico',3400.00),
('Fernanda Souza','gerente',6000.00),
('Eduardo Nascimento','auxiliar',2200.00),
('Camila Pereira','estagiaria',1500.00);

-- INSERÇÃO DE SERVIÇOS
insert into servico (descricao, valor) values
('Troca de ole',120.00),
('Alinhamento',80.00),
('Balanceamento',70.00),
('Revisao completa',500.00),
('Troca de pastilhas de freio',200.00),
('Troca de pneus',600.00),
('Lavagem completa',50.00),
('Troca de bateria',250.00),
('Substituicao de filtro de ar',40.00),
('Diagnostico eletronico',150.00);

-- INSERÇÃO DE PEÇAS
insert into peca (nome, preco, estoque) values
('Oleo 5W30',120.00,50),
('Filtro de oleo',30.00,100),
('Pastilha de freio',80.00,40),
('Pneu 185/65 R15',400.00,20),
('Bateria 60Ah',250.00,15),
('Filtro de ar',45.00,60),
('Filtro de combustivel',60.00,30),
('Amortecedor dianteiro',300.00,10),
('Amortecedor traseiro',280.00,10),
('Correia dentada',150.00,25),
('Velas de ignicao',20.00,100),
('Lampadas farol',15.00,200),
('Pastilha de freio traseira',85.00,40),
('Filtro de cabine',70.00,50),
('Fluido de freio',35.00,80);

-- INSERÇÃO DE ORDENS DE SERVIÇO
insert into ordem_servico (data_abertura, data_fechamento, status, id_veiculo, id_cliente) values
('2025-09-01','2025-09-03','fechada',1,1),
('2025-09-05','2025-09-06','fechada',2,2),
('2025-09-07',null,'em_andamento',3,3),
('2025-09-08','2025-09-09','fechada',4,4),
('2025-09-09',null,'aberta',5,5),
('2025-09-10','2025-09-11','fechada',6,6),
('2025-09-11',null,'em_andamento',7,7),
('2025-09-12','2025-09-13','fechada',8,8),
('2025-09-13','2025-09-14','fechada',9,9),
('2025-09-14',null,'aberta',10,10);

-- INSERÇÃO DE OS_SERVICO
insert into os_servico (id_os, id_servico, id_funcionario, quantidade, valor_unitario) values
(1,1,1,1,120.00),
(1,2,1,1,80.00),
(2,3,3,1,70.00),
(2,4,3,1,500.00),
(3,1,7,1,120.00),
(3,5,7,1,200.00),
(4,6,5,1,600.00),
(4,7,5,1,50.00),
(5,8,2,1,250.00),
(5,9,2,1,40.00),
(6,10,4,1,150.00),
(6,1,4,1,120.00),
(7,2,6,1,80.00),
(7,3,6,1,70.00),
(8,4,8,1,500.00),
(8,5,8,1,200.00),
(9,6,9,1,600.00),
(9,7,9,1,50.00),
(10,8,10,1,250.00),
(10,9,10,1,40.00);

-- INSERÇÃO DE OS_PECA
insert into os_peca (id_os, id_peca, quantidade, valor_unitario) values
(1,1,1,120.00),
(1,2,1,30.00),
(2,3,2,80.00),
(2,4,4,400.00),
(3,1,1,120.00),
(3,5,1,250.00),
(4,6,1,45.00),
(4,7,1,60.00),
(5,8,2,300.00),
(5,9,2,280.00),
(6,10,1,150.00),
(6,11,4,20.00),
(7,12,2,15.00),
(7,13,2,85.00),
(8,14,1,70.00),
(8,15,3,35.00),
(9,1,1,120.00),
(9,2,1,30.00),
(10,3,2,80.00),
(10,4,2,400.00);

-- INSERÇÃO DE PAGAMENTOS
insert into pagamento (id_os, data_pagamento, valor_total, forma_pagamento, status_pagamento) values
(1,'2025-09-03',230.00,'pix','pago'),
(2,'2025-09-06',1140.00,'cartao_credito','pago'),
(3,'2025-09-07',320.00,'dinheiro','pendente'),
(4,'2025-09-09',650.00,'pix','pago'),
(5,'2025-09-09',550.00,'cartao_debito','pendente'),
(6,'2025-09-11',770.00,'dinheiro','pago'),
(7,'2025-09-11',150.00,'pix','pendente'),
(8,'2025-09-13',570.00,'cartao_credito','pago'),
(9,'2025-09-14',150.00,'pix','pago'),
(10,'2025-09-14',480.00,'cartao_debito','pendente');