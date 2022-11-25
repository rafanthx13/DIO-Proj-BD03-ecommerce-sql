-- INSERIR DADOS NA COLUNA
insert into endereco
(id_endereco, logradouro, numero, complemento, cep, bairro, estado)
values
(default,'Rua Aratanha','366',default, '23072-470', 'Campo Grande', default),
(default,'Estrada do mendanha','2870','Apart:107, Bloc:10B', '23092-002', 'Bangu', default),
(default,'Algusto Vascocelos','3672',default, '23183-078', 'Padre Miguel', default),
(default,'Rua Mariponga','128',default, '23451-080', 'Padre Miguel', default),
(default,'Rua Paranagua','752','Fundos', '23722-040', 'Campo Grande', default),
(default,'Rua Pitanga','552',default, '23232-020', 'Senador Camará', default),
(default,'Rua Amadeu Lara','345',default, '23792-520', 'Bangu', default),
(default,'Estrada Comendador Rodrigues','362',default, '23112-780', 'Anchieta', default),
(default,'Rua Candida','789',default, '23322-471', 'Campo Grande', default),
(default,'Rua Marai Gama','1582',default, '23005-001', 'Campo Grande', default),
(default,'Estrada Nilo Peçanha','3221','Fundos', '23788-009', 'Bangu', default),
(default,'Rua Olimpo','366',default, '23562-674', 'Duque de Caxias', default),
(default,'Rua Amaral','1578',default, '23892-007', 'Bangu', default),
(default,'Estrada Dulce','36','Apart:22', '25437-032', 'Guarulhos', 'SP'),
(default,'Rua Matheus Nunes','52','2º Andar', '25367-032', 'São Paulo', 'SP'),
(default,'Rua João Pessoa','672',default, '23723-075', 'Anchieta', default),
(default,'Rua José Maria','822',default, '23452-452', 'Madureira', default),
(default,'Av. Brasil','788',default, '23722-002', 'Campo Grande', default),
(default,'Rua Aratanha','15878','Loja A', '25089-890', 'Mauá', 'SP'),
(default,'Rua Aratanha','52',default, '22052-000', 'Curitiba', 'PR');

select * from endereco;

-- INSERIR DADOS NA COLUNA
insert into fornecedor
(id_fornecedor, razao_social_fornecedor, cnpj, e_mail, telefone, site, id_endereco_fk)
values
(default,'Eletrolux','42.223.123/0001-62','eletrolux@eletrolux.com.br', '(21) 3015-3000', 'https://www.eletrolux.com.br/', '2'),
(default,'Positivo','42.431.566/0001-22','positivo@positivo.com.br', '(21) 4200-7800', 'https://www.positivo.com.br/', '4'),
(default,'Phico','36.777.833/0001-87','phico@phico.com.br', '(21) 4242-6000', 'https://www.phico.com.br/', '1'),
(default,'Artte','10.233.765/0001-01','artte@gmail.com', '(21) 2433-5600', 'https://www.artte.com.br/', '3'),
(default,'Tetoi Brinquedos','12.123.123/0001-02','tetoibriquedos@gmail.com', '21 2415-3788', 'https://www.tetoibrinquedos.com.br/', '1');

select * from fornecedor;

-- ALTERAR DADOS 1 LINHA NA COLUNA
update fornecedor
set id_endereco_fk = '5'
where id_fornecedor = '3';

-- INSERIR DADOS NA COLUNA
insert into parceiro_venda
(id_parceiro_venda, razao_social_parceiro_vendas, cnpj, e_mail, telefone, site, id_endereco_fk)
values
(default,'Manuel Festa','22.877.123/0001-62','manuelfesta@gmail.com', '21 3267-6666', 'https://www.manuelfesta.com.br/', '7'),
(default,'Eletrônica Olé','42.788.321/0001-24','eletronicaole@hotmail.com.br', '(21) 3364-6940', 'https://www.eletronicaole.com.br/', '8'),
(default,'Artesanal Móveis','66.177.463/0001-67','artesanalmoveis@gmail.com', '(21) 4242-3345', 'https://www.artesanalmoveis.com.br/', '6'),
(default,'Informática Zema','10.266.642/0001-01','informaticazema@gmail.com', '(21) 99678-3240', 'https://www.informaticazema.com.br/', '10'),
(default,'Eletro Murilo','11.453.876/0001-02','eletromurilo@gmail.com', '21 3278-4233', 'https://www.eletromurilo.com.br/', '9');

select * from parceiro_venda;

-- INSERIR DADOS NA COLUNA
insert into cliente_pf
(id_cliente_pf, nome_cliente_pf, cpf, data_nascimento, e_mail, telefone, id_endereco_fk)
values
(default,'Décio Santana','104.590.587-77','1981-05-15','deciosa@gmail.com', '21 99525-7801', '11'),
(default,'Ana Rosa','098564897-90','2001-10-09','anarosa@hotmail.com.br', '(21) 98789-6940', '12'),
(default,'Luana Nogueira','11122233344','1984-11-17','luananog@gmail.com', '(21) 2145-3345', '13'),
(default,'Mara Sueli','786.765.890-67','1956-02-19','mara.sueli@gmail.com', '(21) 99181-8119', '14'),
(default,'Leila Lasaro','098.722.081-25','2000-02-06','leilalasa@gmail.com', '11 99875-4578', '15'),
(default,'Mathues Lasaro','897.643.090-45','2000-02-06','matlasa@gmail.com', '(11) 99785-5643', '15');

select * from cliente_pf;

-- INSERIR DADOS NA COLUNA
insert into cliente_pj
(id_cliente_pj, razao_social_cliente_pj, cnpj, e_mail, telefone, site, id_endereco_fk)
values
(default,'Eletrônica Ita','32.667.144/0001-02','eletronicaita@gmail.com', '(11) 3267-6666', 'https://www.eletronicaita.com.br/', '20'),
(default,'Eletrônica KCL','12.118.671/0001-02','eletronkcl@hotmail.com.br', '(31) 3364-6940', 'https://www.eletronkcl.com.br/', '19'),
(default,'Festa & CIA','62.877.447/0001-07','festaecia@gmail.com', '(21) 4242-3345', 'https://www.festaecia.com.br/', '18'),
(default,'Casa Maite','10.555.762/0001-02','casamaite@gmail.com', '(21) 99678-3240', 'https://www.casamaite.com.br/', '17'),
(default,'Zé Ruela Parafusos','12.444.832/0001-02','zrp@gmail.com', '21 3278-4233', 'https://www.zeruelaparafuso.com.br/', '16'),
(default,'Eletrônica Olé','42.788.321/0001-24','eletronicaole@hotmail.com.br', '(21) 3364-6940', 'https://www.eletronicaole.com.br/', '8');

select * from cliente_pj;

-- INSERIR DADOS NA COLUNA
insert into comprador
(id_comprador, nome, cpf)
values
(default,'Maria Santos','122.443.500-89'),
(default,'Fernada Vasconcelos','177.666.222-02'),
(default,'Felipe Machado','111.333.675-11'),
(default,'Maria Pacheco','122.005.511-09'),
(default,'Macelo Pereira','165.522.111-77'),
(default,'Ana Pinto','098.133.227-11'),
(default,'Luana Silva','051.566.666-34'),
(default,'Ana Silva','151.003.542-79'),
(default,'Ana Nazare','222.174.552-99'),
(default,'Décio Silva','111.321.123-00');

select * from comprador;

-- INSERIR DADOS NA COLUNA
insert into estoque
(id_estoque, código_localizacao)
values
(default,'A001'),
(default,'A002'),
(default,'A003'),
(default,'B001'),
(default,'B002'),
(default,'C001'),
(default,'C002'),
(default,'D001'),
(default,'D002'),
(default,'E001'),
(default,'E002'),
(default,'F001'),
(default,'F002');

UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'eletro_domestico_forno_01' WHERE (`id_estoque` = '1');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'eletro_domestico_microondas_02' WHERE (`id_estoque` = '2');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'eletro_domestico_fogao_03' WHERE (`id_estoque` = '3');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'eletronico_tv_01' WHERE (`id_estoque` = '4');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'eletronico_telefone_02' WHERE (`id_estoque` = '5');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'movel_cadeira_01' WHERE (`id_estoque` = '6');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'movel_mesa_02' WHERE (`id_estoque` = '7');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'briquedo_lego_01' WHERE (`id_estoque` = '8');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'briquedo_bingo_02' WHERE (`id_estoque` = '9');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'informatica_notebook_01' WHERE (`id_estoque` = '10');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'informatica_mouse_02' WHERE (`id_estoque` = '11');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'informatica_moldura_01' WHERE (`id_estoque` = '12');
UPDATE `e_commerce`.`estoque` SET `código_localizacao` = 'informatica_vazio_02' WHERE (`id_estoque` = '13');

select * from estoque
order by id_estoque;


-- INSERIR DADOS NA COLUNA
insert into produto
(id_produto, nome_produto, categoria_produto, descricoa_produto)
values
(default,'Forno Elétrico','Eletro domestico','Forno Elétrico de Bancada Sapore Preto 44 litros 220V'),
(default,'Microondas','Eletro domestico','Lg Microondas 30L Ms3097Ar Preto 127V'),
(default,'Fogão','Eletro domestico','Fogão Cooktop Fischer 4Q FIT LINE Gás Mesa Vidro Preto BIVOLT'),
(default,'Smart TV','Eletrônico','Smart TV LED 32" HD AOC ROKU TV FHD 32S5195/78G, Wi-Fi, 3 HDMI, 1 USB, Wifi, Conversor Digital'),
(default,'Smartphone','Eletrônico','Smartphone Xiaomi Redmi 9i Sport 64GB 4GB RAM Tela 6.53'),
(default,'Cadeira','Móvel','Cadeira Gamer Roxtor Legend Carbon'),
(default,'Mesa','Móvel','Mesa para Escritório Studio 900 Caemmun Louro Freijo/metalic Sued'),
(default,'LEGO','Brinquedo','LEGO Animais Selvagens do Mundo 10975 Brinquedo de construção; set da vida selvagem para crianças e pré-escolares com mais de 2 anos (142 peças)'),
(default,'Bingo','Brinquedo','Bingo dos Animais, Multicor, Toyster'),
(default,'Notebook','Informática','Notebook Gamer Acer Nitro 5 AN517-52-77KZ Intel Core i7 Windows 11 Home 8GB'),
(default,'Mouse','Informática','Mouse Classic Box Óptico Full Black USB - MO300'),
(default,'Moldura',default,'Moldura Quadro A4 (21x30) Em Madeira Com Vidro (Branco)');

select * from produto;

-- INSERIR DADOS NA COLUNA
insert into produto_estoque
(id_produto_estoque, quantidade_produto_estoque, valor_unitário_produto, data_reposicao_produto, id_estoque_fk, id_produto_fk, id_parceiro_venda_fk)
values
(default,'8','606.78','2022-06-20', '1', '1', null),
(default,'18','589.00','2022-06-20', '2', '2', null),
(default,'18','750.00','2022-06-20', '3', '3', null),
(default,'2','733.00','2022-06-20', null, '3', '5'),
(default,'0','1809.00','2022-06-20', '4', '4', null),
(default,'2','1378.00','2022-06-20', '5', '5', null),
(default,'2','632.00','2022-06-20', '6', '6', null),
(default,'2','490.90','2022-06-20', '7', '7', null),
(default,'2','182.00','2022-06-20', '8', '8', null),
(default,'2','9.00','2022-06-20', '9', '9', null),
(default,'52','5149.99','2022-06-20', '10', '10', null),
(default,'3','5066.00','2022-09-03', null, '10', '4'),
(default,'32','18.20','2022-07-28', '11', '11', null),
(default,'2','6.00','2022-06-20', '12', '12', null),
(default,'223','4.50','2022-11-23', null, '12', '3');

select * from produto_estoque;

-- INSERIR DADOS NA COLUNA
insert into compra_fornecedor_produto_estoque
(id_compra_fornecedor_produto_estoque, data_pedido_compra, data_entrega_compra, quatidade_produto_compra, valor_unitario_compra, id_fornecedor_fk, id_comprador_fk, id_produto_estoque_fk)
values
(default,'2022-04-13','2022-04-29','50', '380.20', '4', '4', '8'),
(default,'2022-11-03',default,'25', '1250.00', '3', '1', '4'),
(default,'2022-11-25',default,'30', '420', '4', '10', '7');

select * from compra_fornecedor_produto_estoque;

-- INSERIR DADOS NA COLUNA
insert into pedido
(id_pedido,  quatidade_pedido, valor_total_pedido, id_produto_estoque_fk, id_cliente_pf_fk, id_cliente_pj_fk)
values
(default,'1','5066.00', '12', '1', null ),
(default,'100','450', '15', null, '4' ),
(default,'2','18', '10', '4', null ),
(default,'1','490.90', '8', '5', null );

select * from pedido;

-- INSERIR DADOS NA COLUNA
insert into pix
(id_pix, chave_pix, valor_pix, data_gerado_em)
values
(default,'104.590.587-77','5066.00', '2022-11-25'),
(default,'leilalasa@gmail.com','490.90', '2022-11-26');

select * from pix;

-- INSERIR DADOS NA COLUNA
insert into boleto
(id_boleto, codigo_barra, valor_boleto, data_gerado_em, data_vencimento_pagamento)
values
(default, '11111111111-1 22222222222-2 33333333333-3 44444444444-4', '450', '2022-11-25', '2022-11-30');

select * from boleto;

-- INSERIR DADOS NA COLUNA
insert into cartao_credito
(id_cartao_credito, nome_cartao_credito, numero_cartao_credito, validade, cvc, valor_cartao_credito, data_gerado_em)
values
(default,'Mara Sueli','9999 8888 7777 6666','2024-05', '861', '18', '2022-11-25');

select * from cartao_credito;

-- INSERIR DADOS NA COLUNA
insert into tipo_pagamento
(id_tipo_pagamento, confirmacao_pagamento, id_pix_fk, id_cartao_credito_fk, id_boleto_fk)
values
(default,'Pago', '1', null, null),
(default,'Pago', null, '1', null),
(default,'Não pago', null, null, '1'),
(default,'Pago', '2', null, null);

select * from tipo_pagamento;

-- INSERIR DADOS NA COLUNA
insert into pedido_pagamento_entrega
(id_pedido_pagamento_entrega, numero_nota_fiscal, id_tipo_pagamento_fk, id_pedido_fk)
values
(default,'1111 2222 1111 2222 1111 2222 1111 2222 1111 2222 1111','1','1'),
(default,'3333 4444 3333 4444 3333 4444 3333 4444 3333 4444 3333','2','2'),
(default,'5555 6666 5555 6666 5555 6666 5555 6666 5555 6666 5555','3','3'),
(default,'7777 8888 7777 8888 7777 8888 7777 8888 7777 8888 7777','4','4');

select * from pedido_pagamento_entrega;

-- INSERIR DADOS NA COLUNA
insert into entrega
(id_entrega, codigo_rastreamento, data_envio, tentativa_entrega, data_entrega)
values
(default,'AA12345678BR','2022-12-01', default, default);

select * from entrega;

-- INSERIR DADOS NA COLUNA
insert into liberacao_entrega_pagamento
(id_liberacao_entrega_pagamento, liberacao_entrega_mediante_pagamento, id_entrega_fk, id_pedido_pagamento_entrega_fk)
values
(default,'Entrega liberada','1','1'),
(default,'Entrega liberada','1','2'),
(default,'Entrega bloqueada','1','3'),
(default,'Entrega liberada','1','4');

select * from liberacao_entrega_pagamento;