-- CRIAR BANCO DE DADOS COM CARACTERES ESPECIAIS (ACENTUAÇÃO)
create database e_commerce
default character set utf8
default collate utf8_general_ci;

-- VISUALIZAR TODOS OS BANCOS EXISTENTES
show databases;

-- ACESSAR BANCO DE DADO
use e_commerce;

-- CRIAR NOVA TABELA "endereco"
create table if not exists endereco (
	id_endereco INT not null auto_increment primary key,
	logradouro VARCHAR(50) not null,
	numero VARCHAR(10) not null default'Sem número',
	complemento VARCHAR(45) not null default'Sem complemento',
	cep VARCHAR(9) not null,
	bairro VARCHAR(45) not null,
	estado VARCHAR(2) not null default'RJ'
) default charset=utf8;

-- VISUALIZAR TABELA
describe endereco;

-- CRIAR NOVA TABELA "fornecedor"
create table if not exists fornecedor (
	id_fornecedor INT not null auto_increment primary key,
	razao_social_fornecedor VARCHAR(120) not null,
	cnpj VARCHAR(18) not null unique,
	e_mail VARCHAR(60) not null unique,
	telefone VARCHAR(15) not null unique,
	site VARCHAR(180) not null unique,
	id_endereco_fk INT not null,
	foreign key (id_endereco_fk) references endereco (id_endereco)
) default charset=utf8;

-- VISUALIZAR TABELA
describe fornecedor;

-- CRIAR NOVA TABELA "parceiro_venda"
create table if not exists parceiro_venda (
	id_parceiro_venda INT not null auto_increment primary key,
	razao_social_parceiro_vendas VARCHAR(100) not null,
	cnpj VARCHAR(18) not null unique,
	e_mail VARCHAR(60) not null unique,
	telefone VARCHAR(15) not null unique,
	site VARCHAR(180) not null unique,
	id_endereco_fk INT not null,
	foreign key (id_endereco_fk) references endereco (id_endereco)
) default charset=utf8;

-- VISUALIZAR TABELA
describe parceiro_venda;

-- CRIAR NOVA TABELA "cliente_pf"
create table if not exists cliente_pf (
	id_cliente_pf INT not null auto_increment primary key,
	nome_cliente_pf VARCHAR(60) not null,
	cpf VARCHAR(14) not null unique,
	data_nascimento DATE not null,
	telefone VARCHAR(15) not null unique,
	e_mail VARCHAR(60) not null unique,
	id_endereco_fk INT not null,
	foreign key (id_endereco_fk) references endereco (id_endereco)
) default charset=utf8;

-- VISUALIZAR TABELA
describe cliente_pf;

-- CRIAR NOVA TABELA "cliente_pj"
create table if not exists cliente_pj (
	id_cliente_pj INT not null auto_increment primary key,
	razao_social_cliente_pj VARCHAR(120) not null,
	cnpj VARCHAR(18) not null unique,
	site VARCHAR(180) not null unique,
	telefone VARCHAR(15) not null unique,
	e_mail VARCHAR(60) not null unique,
	id_endereco_fk INT not null,
	foreign key (id_endereco_fk) references endereco (id_endereco)
) default charset=utf8;

-- VISUALIZAR TABELA
describe cliente_pj;

-- CRIAR NOVA TABELA "comprador"
create table if not exists comprador (
	id_comprador INT not null auto_increment primary key,
	nome VARCHAR(45) not null,
	cpf VARCHAR(15) not null unique
) default charset=utf8;

-- ALTERA NOME DA COLUNA O TIPO E QUANTIDADE
alter table comprador
change column nome nome_comprador VARCHAR(45) not null;

-- VISUALIZAR TABELA
describe comprador;

-- CRIAR NOVA TABELA "estoque"
create table if not exists estoque (
	id_estoque INT not null auto_increment primary key,
	código_localizacao VARCHAR(20) not null unique
) default charset=utf8;

-- ALTERA O TIPO DE DADOS E QUANTIDADE DE UMA COLUNA
alter table estoque
modify column código_localizacao VARCHAR(50);

-- VISUALIZAR TABELA
describe estoque;

-- CRIAR NOVA TABELA "produto"
create table if not exists produto (
	id_produto INT not null auto_increment primary key,
	nome_produto VARCHAR(100) unicode not null,
	categoria_produto ENUM('Sem definição', 'Eletro domestico', 'Eletrônico', 'Móvel', 'Brinquedo', 'Informática') not null default'Sem definição',
	descricoa_produto TEXT(300)
) default charset=utf8;

-- ALTERA O TIPO DE DADOS E QUANTIDADE DE UMA COLUNA
alter table produto
modify column descricoa_produto TEXT;

-- VISUALIZAR TABELA
describe produto;

-- CRIAR NOVA TABELA "produto_estoque"
create table if not exists produto_estoque (
	id_produto_estoque INT not null auto_increment primary key,
	quantidade_produto_estoque INT unsigned not null,
	valor_unitário_produto DECIMAL(10,2) unsigned not null,
	data_reposicao_produto DATE not null,
	id_estoque_fk INT unique,
	id_produto_fk INT not null,
	id_parceiro_venda_fk INT,
	foreign key (id_estoque_fk) references estoque (id_estoque),
	foreign key (id_produto_fk) references produto (id_produto),
	foreign key (id_parceiro_venda_fk) references parceiro_venda (id_parceiro_venda)
) default charset=utf8;

-- ALTERA O TIPO DE DADOS E QUANTIDADE DE UMA COLUNA
alter table produto_estoque
modify column id_estoque_fk INT unique;

-- VISUALIZAR TABELA
describe produto_estoque;

-- CRIAR NOVA TABELA "compra_fornecedor_produto_estoque"
create table if not exists compra_fornecedor_produto_estoque (
	id_compra_fornecedor_produto_estoque INT not null auto_increment primary key,
	data_pedido_compra DATE not null,
	data_entrega_compra DATE not null default'0000-00-00',
	quatidade_produto_compra INT unsigned not null,
	valor_total_compra DECIMAL(10,2) unsigned not null,
	id_fornecedor_fk INT not null,
	id_comprador_fk INT not null,
	id_produto_estoque_fk INT not null,
	foreign key (id_fornecedor_fk) references fornecedor (id_fornecedor),
	foreign key (id_comprador_fk) references comprador (id_comprador),
	foreign key (id_produto_estoque_fk) references produto_estoque (id_produto_estoque)
) default charset=utf8;

-- ALTERA NOME DA COLUNA O TIPO E QUANTIDADE
alter table compra_fornecedor_produto_estoque
change column valor_total_compra valor_unitario_compra DECIMAL(10,2) unsigned not null;

-- VISUALIZAR TABELA
describe compra_fornecedor_produto_estoque;

-- CRIAR NOVA TABELA "pedido"
create table if not exists pedido (
	id_pedido INT not null auto_increment primary key,
	quatidade_pedido INT unsigned not null,
	valor_total_pedido DECIMAL(10,2) unsigned not null,
	id_produto_estoque_fk INT not null,
	id_cliente_pf_fk INT,
	id_cliente_pj_fk INT,
	foreign key (id_produto_estoque_fk) references produto_estoque (id_produto_estoque),
	foreign key (id_cliente_pf_fk) references cliente_pf (id_cliente_pf),
	foreign key (id_cliente_pj_fk) references cliente_pj (id_cliente_pj)
) default charset=utf8;

-- VISUALIZAR TABELA
describe pedido;

-- CRIAR NOVA TABELA "pix"
create table if not exists pix (
	id_pix INT not null auto_increment primary key,
	chave_pix VARCHAR(45) not null,
	valor_pix DECIMAL(10,2) unsigned not null,
	data_gerado_em DATE not null
) default charset=utf8;

-- VISUALIZAR TABELA
describe pix;

-- CRIAR NOVA TABELA "boleto"
create table if not exists boleto (
	id_boleto INT not null auto_increment primary key,
	codigo_barra VARCHAR(45) not null,
	valor_boleto DECIMAL(10,2) unsigned not null,
	data_gerado_em DATE not null,
	data_vencimento_pagamento DATE not null
) default charset=utf8;

-- ALTERA O TIPO DE DADOS E QUANTIDADE DE UMA COLUNA
alter table boleto
modify column codigo_barra VARCHAR(55)not null;

-- VISUALIZAR TABELA
describe boleto;

-- CRIAR NOVA TABELA "cartao_credito"
create table if not exists cartao_credito (
	id_cartao_credito INT not null auto_increment primary key,
	nome_cartao_credito VARCHAR(60) not null,
	numero_cartao_credito INT unsigned not null,
	validade DATE not null,
	cvc INT unsigned not null,
	valor_cartao_credito DECIMAL(10,2)  unsigned not null,
	data_gerado_em DATE not null,
	data_vencimento_pagamento DATE not null
) default charset=utf8;

-- ALTERA O TIPO DE DADOS E QUANTIDADE DE UMA COLUNA
alter table cartao_credito
modify column validade varchar(7) not null,
modify column numero_cartao_credito varchar(19) not null;

-- APAGAR COLUNA DENTRO DA TABELA
alter table cartao_credito
drop column data_vencimento_pagamento;

-- VISUALIZAR TABELA
describe cartao_credito;

-- CRIAR NOVA TABELA "tipo_pagamento"
create table if not exists tipo_pagamento (
	id_tipo_pagamento INT not null auto_increment primary key,
	confirmacao_pagamento ENUM('Pago', 'Não pago') not null default'Não pago',
	id_pix_fk INT,
	id_cartao_credito_fk INT,
	id_boleto_fk INT,
	foreign key (id_pix_fk) references pix (id_pix),
	foreign key (id_cartao_credito_fk) references cartao_credito (id_cartao_credito),
	foreign key (id_boleto_fk) references boleto (id_boleto)
) default charset=utf8;

-- VISUALIZAR TABELA
describe tipo_pagamento;

-- CRIAR NOVA TABELA "pedido_pagamento_entrega"
create table if not exists pedido_pagamento_entrega (
	id_pedido_pagamento_entrega INT not null auto_increment primary key,
	numero_nota_fiscal VARCHAR(55) unique not null,
	id_tipo_pagamento_fk INT not null,
	id_pedido_fk INT not null,
	foreign key (id_tipo_pagamento_fk) references tipo_pagamento (id_tipo_pagamento),
	foreign key (id_pedido_fk) references pedido (id_pedido)
) default charset=utf8;

-- VISUALIZAR TABELA
describe pedido_pagamento_entrega;

-- CRIAR NOVA TABELA "entrega"
create table if not exists entrega (
	id_entrega INT not null auto_increment primary key,
	status_liberacao_entrega ENUM('Entrega liberada', 'Entrega indeferida') not null default'Entrega indeferida',
	codigo_rastreamento VARCHAR(15) not null,
	data_envio DATE not null,
	tentativa_entrega INT unsigned not null default'0',
	data_entrega DATE not null default'0000-00-00'
) default charset=utf8;

-- APAGAR COLUNA DENTRO DA TABELA
alter table entrega
drop column status_liberacao_entrega;

-- VISUALIZAR TABELA
describe entrega;

-- CRIAR NOVA TABELA "liberacao_entrega_pagamento"
create table if not exists liberacao_entrega_pagamento (
	id_liberacao_entrega_pagamento INT not null auto_increment primary key,
	liberacao_entrega_mediante_pagamento ENUM('Entrega Liberada', 'Entrega bloqueada') not null default'Entrega bloqueada',
	id_entrega_fk INT not null,
	id_pedido_pagamento_entrega_fk INT not null,
	foreign key (id_entrega_fk) references entrega (id_entrega),
	foreign key (id_pedido_pagamento_entrega_fk) references pedido_pagamento_entrega (id_pedido_pagamento_entrega)
) default charset=utf8;

-- VISUALIZAR TABELA
describe liberacao_entrega_pagamento;
