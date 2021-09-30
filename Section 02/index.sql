--To use the selects use the table that is in the repository--
--"https://github.com/DevLuigi/Training-DB"--



-- DESAFIO 13 --
   SELECt  c.id_cliente,
 	     c.nm_cliente,
           c.ds_cpf
     from  tb_cliente      c
left join  tb_endereco     e 
       on  c.id_endereco   =  e.id_endereco
    where  e.id_endereco is NULL;
    

    
-- DESAFIO 12 --
SELECT  id_categoria,
        nm_categoria
  FROM  tb_categoria  c 
 where  c.id_categoria not in (SELECT id_categoria FROM tb_produto);   


 -- DESAFIO 10 --
SELECT  id_venda,
	  dt_venda,
        nm_cliente,
        ds_nota_fiscal,
        tp_forma_pagamento,
        ds_endereco,
        nr_endereco
  from  tb_venda		      v 
  left join   tb_cliente	c
  	   ON	  c.id_cliente 	= v.id_cliente
       join   tb_endereco	e 
  	   on   v.id_endereco_entrega	= e.id_endereco
      where   v.id_cliente is null
      ORDER
  	   by   v.id_venda;
 

-- DESAFIO 11 --

SELECT  id_produto,
        nm_produto,
        nm_categoria,
        vl_preco
  from  tb_produto	p
  JOIN  tb_categoria	c
    on  c.id_categoria  =  p.id_categoria
 where  p.id_produto not in (SELECT id_produto FROM tb_venda_item);  