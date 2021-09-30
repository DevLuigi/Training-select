--To use the selects use the table that is in the repository--
--"https://github.com/DevLuigi/Training-DB"--


-- DESAFIO 10 --
SELECT DISTINCT nm_categoria,
                nm_produto,
                vl_preco
          FROM  tb_produto   p
          join  tb_categoria c
            on  p.id_categoria = c.id_categoria
          JOIN	tb_venda_item vi
          	ON	vi.id_venda	=	p.id_produto
          JOIN 	tb_venda	v
          	ON	v.id_venda	=	vi.id_venda
          where dt_venda BETWEEN '2021-01-01' and '2021-02-01'
          ORDER	
             by nm_produto;     
-- DESAFIO 09 --
SELECT  v.id_venda,
		    v.dt_venda,
		    c.nm_cliente,
        v.ds_nota_fiscal,
        v.tp_forma_pagamento,
        e.ds_endereco,
        e.nr_endereco
  FROM  tb_venda     v 
  join  tb_cliente   c
    on  c.id_cliente = v.id_cliente
  JOIN  tb_endereco  e   
    on  v.id_endereco_entrega = e.id_endereco
  JOIN	tb_venda_item vi
  	on  vi.id_venda_item	=	v.id_venda
  JOIN	tb_produto	p 
  	ON	p.id_produto	=	vi.id_produto
  JOIN	tb_categoria	ca 
  	ON	ca.id_categoria	=	p.id_categoria
 WHERE  v.dt_venda BETWEEN '2021-01-01' and '2021-02-01'
 ORDER
    by  id_venda;


-- DESAFIO 08--
SELECT  v.id_venda,
		    v.dt_venda,
		    c.nm_cliente,
        v.ds_nota_fiscal,
        v.tp_forma_pagamento,
        e.ds_endereco,
        e.nr_endereco
  FROM  tb_venda     v 
  join  tb_cliente   c
    on  c.id_cliente = v.id_cliente
  JOIN  tb_endereco  e   
    on  v.id_endereco_entrega = e.id_endereco
  JOIN	tb_venda_item vi
  	on  vi.id_venda_item	=	v.id_venda
  JOIN	tb_produto	p 
  	ON	p.id_produto	=	vi.id_produto
  JOIN	tb_categoria	ca 
  	ON	ca.id_categoria	=	p.id_categoria
 WHERE  v.id_venda = '1'
   	OR	ds_nota_fiscal like '2021%'
 ORDER
    by  id_venda;

-- DESAFIO 07--
SELECT  id_venda,
		    dt_venda,
		    nm_cliente,
        ds_nota_fiscal,
        tp_forma_pagamento,
        ds_endereco,
        nr_endereco
  FROM  tb_venda     v 
  join  tb_cliente   c
    on  c.id_cliente = v.id_cliente
  JOIN  tb_endereco  e   
    on  v.id_endereco_entrega = e.id_endereco
 WHERE  dt_venda BETWEEN '2021-01-01' and '2021-01-02' 
   and  ds_endereco = 'Rua Brooklyn'
 ORDER
    by  id_venda;

-- DESAFIO 06 --
SELECT  id_venda,
		    dt_venda,
		    nm_cliente,
        ds_nota_fiscal,
        tp_forma_pagamento,
        ds_endereco,
        nr_endereco
  FROM  tb_venda     v 
  join  tb_cliente   c
    on  c.id_cliente = v.id_cliente
  JOIN  tb_endereco  e   
    on  v.id_endereco_entrega = e.id_endereco
 where  nm_cliente LIKE '%T%' OR ds_nota_fiscal LIKE '%NF2021%'
 ORDER
    by  id_venda;


-- DESAFIO 05  --
SELECT  id_venda,
		    dt_venda,
		    nm_cliente,
        ds_nota_fiscal,
        tp_forma_pagamento,
        ds_endereco,
        nr_endereco
  FROM  tb_venda     v 
  join  tb_cliente   c
    on  c.id_cliente = v.id_cliente
  JOIN  tb_endereco  e   
    on  v.id_endereco_entrega = e.id_endereco
 where  v.dt_venda BETWEEN  '2021-01-01' and '2021-01-30'
 ORDER
    by  id_venda;

-- DESAFIO 04  --

SELECT  nm_cliente,
	      ds_cpf,
        ds_cep,
        ds_endereco,
        nr_endereco,
        ds_cidade
  FROM  tb_endereco e 
  join  tb_cliente  c
    on  e.id_endereco = c.id_endereco
 where  nm_cliente LIKE "T%" and ds_cidade = "São Paulo - SP"
 ORDER
    by  ds_cidade;
    
-- DESAFIO 03  --

SELECT  nm_categoria,
	      nm_produto,
        vl_preco,
        qtd_minima,
        qtd_disponivel
  FROM  tb_produto   p
  join  tb_categoria c
    on  p.id_categoria = c.id_categoria
  JOIN  tb_estoque   e
    on  e.id_produto = p.id_produto
 where nm_categoria LIKE 'd%'
   and nm_produto LIKE 'd%'
 ORDER	
    by vl_preco desc;

-- DESAFIO 02  --
SELECT  nm_categoria,
	      nm_produto,
        vl_preco,
        qtd_minima,
        qtd_disponivel
  FROM  tb_produto   p
  join  tb_categoria c
    on  p.id_categoria = c.id_categoria
  JOIN  tb_estoque   e
    on  e.id_produto = p.id_produto
  where qtd_minima > qtd_disponivel
  ORDER	
   	 by nm_categoria, 
        nm_produto;     
        
-- DESAFIO 01  --

SELECT  nm_categoria,
	      nm_produto,
        vl_preco
  FROM  tb_produto   p
  join  tb_categoria c
    on  p.id_categoria = c.id_categoria
  where nm_categoria   = "Salgados"
  ORDER	
   	 by nm_categoria, 
        nm_produto;