cliente
-id
-nickname
-email


pizza
-id
-pizza
-precio

pedido
-id
-cliente_id
-fecha pedido
-precio_pedido


detalle (tabla asociativa de pizzas con pedidos)
-id
-id_pedido
-id_pizza
-cantidad
--- acciones
jose hace el pedido 1
- pide 2 margaritas
- pide 1 cuatro quesos
- pide 1 frutti di mare

el camarero te tiene dar un ticket
con todos los detalles asociados al pedido
el precio total