-- Qual a descrição e o valor de todos os serviços disponíveis?
select descricao, valor from servico;

-- Quais são os funcionários que ganham mais de R$ 3.000?
select nome, salario from funcionario where salario > 3000;

-- Qual o nome completo e o documento de todos os clientes que são "Pessoa Jurídica"?
select nome_completo, documento from cliente where tipo_cliente = 'pessoa_juridica';

-- Qual seria o preço de cada peça se houvesse um desconto de 10%?
select nome, preco, round(preco * 0.90, 2) as preco_com_desconto from peca;

-- Calcule o tempo de duração de cada Ordem de Serviço que já foi fechada.
select id_os, data_abertura, data_fechamento, datediff(data_fechamento, data_abertura) as duracao_em_dias from ordem_servico where status = 'fechada';

-- Liste todos os veículos, ordenando-os do ano mais recente para o mais antigo.
select modelo, ano from veiculo order by ano desc;

-- Quais clientes têm mais de um veículo registrado?
select c.nome_completo, count(v.id_veiculo) as total_veiculos from cliente c join veiculo v on c.id_cliente = v.id_cliente group by c.id_cliente having total_veiculos >= 1;

-- Quais funcionários participaram de mais de uma Ordem de Serviço?
select f.nome, count(os.id_os) as total_os from funcionario f join os_servico os on f.id_funcionario = os.id_funcionario group by f.id_funcionario having total_os >= 2;

-- Junções entre Tabelas
select os.id_os, c.nome_completo as nome_cliente, v.placa from ordem_servico os join cliente c on os.id_cliente = c.id_cliente join veiculo v on os.id_veiculo = v.id_veiculo;

-- Qual o valor total de cada Ordem de Serviço, incluindo o nome do cliente e a descrição do serviço?
select
    os.id_os,
    c.nome_completo as nome_cliente,
    sum(os_s.valor_unitario * os_s.quantidade) as total_servicos,
    sum(os_p.valor_unitario * os_p.quantidade) as total_pecas,
    sum(os_s.valor_unitario * os_s.quantidade) + sum(os_p.valor_unitario * os_p.quantidade) as valor_total_os
from 
	ordem_servico os
join 
	cliente c on os.id_cliente = c.id_cliente
left join 
	os_servico os_s on os.id_os = os_s.id_os
left join 
	os_peca os_p ON os.id_os = os_p.id_os
group by 
	os.id_os, c.nome_completo;