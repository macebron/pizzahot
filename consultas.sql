-- seleccinamos la pizzas y los precios que tienen ordenadas por orden alfabetico
SELECT pizza, precio
FROM pizzas
ORDER BY precio;
-- saber qué ingrendientes tiene la pizza carbonara
SELECT
ingredientes.ingrediente
FROM pizzas
JOIN pizzasingredientes
on pizzas.id = pizzasingredientes.id_pizza
JOIN ingredientes
on pizzasingredientes.id_ingrediente=ingredientes.id
where pizzas.pizza ='hawaiana'
;

-- pizzas que no tengan carne
SELECT 
pizzas.pizza
FROM pizzas
JOIN pizzasingredientes
on pizzas.id = pizzasingredientes.id_pizza
JOIN ingredientes
on pizzasingredientes.id_ingrediente=ingredientes.id
where ingredientes.tipo ='pescado'
;
-- el número de pizzas que tenemos con tomate
SELECT 
-- No es necesario en concat
CONCAT('Tenemos ',COUNT(pizzas.pizza),' pizzas')
FROM pizzas
JOIN pizzasingredientes
on pizzas.id = pizzasingredientes.id_pizza
JOIN ingredientes
on pizzasingredientes.id_ingrediente=ingredientes.id
where 
ingredientes.ingrediente='salsa de tomate'
OR
ingredientes.ingrediente ='tomates cherry'
;
-- cuantos ingredientes de carne tenemos
SELECT distinct
ingredientes.ingrediente
FROM pizzas
JOIN pizzasingredientes
on pizzas.id = pizzasingredientes.id_pizza
JOIN ingredientes
on pizzasingredientes.id_ingrediente=ingredientes.id
where 
 ingredientes.tipo in ('carnes')
;
SELECT distinct
ingredientes.ingrediente
FROM pizzas
JOIN pizzasingredientes
on pizzas.id = pizzasingredientes.id_pizza
JOIN ingredientes
on pizzasingredientes.id_ingrediente=ingredientes.id
where 
 ingredientes.tipo in ('pescado')
;

-- SELECCCIONAMOS EL PEDIDO 1
SELECT 
clientes.nick,
detallespedido.cantidad,
pizzas.pizza,
pizzas.precio,
pizzas.precio*detallespedido.cantidad as total
 from pedidos
join clientes on pedidos.id_cliente = clientes.id
join detallespedido on detallespedido.id_pedido = pedidos.id
join pizzas on detallespedido.id_pizza= pizzas.id
where pedidos.id=2
;
SELECT 
clientes.nick,
pedidos.id,
SUM(pizzas.precio*detallespedido.cantidad)
 from pedidos
join clientes on pedidos.id_cliente = clientes.id
join detallespedido on detallespedido.id_pedido = pedidos.id
join pizzas on detallespedido.id_pizza= pizzas.id
where pedidos.id=2
;






