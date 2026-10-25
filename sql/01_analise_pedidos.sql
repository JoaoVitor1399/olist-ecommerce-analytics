
-- Projeto: Olist E-commerce Analytics
-- Análise de pedidos com SQLite

-- 1. Quantidade de pedidos por status
SELECT
    order_status,
    COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY order_status
ORDER BY quantidade_pedidos DESC;

-- 2. Total de pedidos
SELECT
    COUNT(*) AS total_pedidos
FROM pedidos;

-- 3. Pedidos entregues e cancelados
SELECT
    order_status,
    COUNT(*) AS quantidade
FROM pedidos
WHERE order_status IN ('delivered', 'canceled')
GROUP BY order_status
ORDER BY quantidade DESC;

-- 4. Valor total por método de pagamento
SELECT
    payment_type AS metodo_pagamento,
    ROUND(SUM(payment_value), 2) AS valor_total
FROM pagamentos
GROUP BY payment_type
ORDER BY valor_total DESC;

-- 5. Valor médio e quantidade de pagamentos por método
SELECT
    payment_type AS metodo_pagamento,
    ROUND(AVG(payment_value), 2) AS valor_medio,
    COUNT(*) AS quantidade_pagamentos
FROM pagamentos
GROUP BY payment_type
ORDER BY valor_medio DESC;

-- 6. Quantidade de registros de pagamento por método
SELECT
    payment_type AS metodo_pagamento,
    COUNT(*) AS quantidade_pagamentos
FROM pagamentos
GROUP BY payment_type
ORDER BY quantidade_pagamentos DESC;

-- 7. Quantidade de pedidos por mês
SELECT
    strftime('%Y-%m', order_purchase_timestamp) AS mes,
    COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY mes
ORDER BY mes;

-- 8. Quantidade de clientes por estado
SELECT
    customer_state AS estado,
    COUNT(*) AS quantidade_clientes
FROM clientes
GROUP BY customer_state
ORDER BY quantidade_clientes DESC;
