# Olist E-commerce Analytics

## Sobre o projeto

Projeto de análise de dados do e-commerce brasileiro Olist, desenvolvido para investigar indicadores de vendas, pagamentos e desempenho logístico, transformando dados em informações úteis para a tomada de decisão.

## Objetivos

- Analisar o volume e a situação dos pedidos.
- Avaliar atrasos nas entregas por estado.
- Acompanhar a evolução mensal dos atrasos.
- Investigar a participação dos métodos de pagamento.
- Desenvolver indicadores e visualizações para apoiar decisões de negócio.

## Tecnologias utilizadas

- **Python:** exploração, tratamento e análise de dados.
- **SQL:** consultas e análise de dados.
- **SQLite:** armazenamento e consulta de dados.
- **Power BI:** criação de dashboard interativo.
- **Pandas:** manipulação de dados.

## Indicadores analisados

- Total de pedidos.
- Pedidos entregues e cancelados.
- Valor total dos pagamentos.
- Taxa de atraso por estado.
- Evolução mensal da taxa de atraso.
- Participação dos métodos de pagamento.

## Resultados iniciais

A análise dos dados identificou 99.441 pedidos e 96.478 pedidos entregues. Foram identificados 625 pedidos cancelados.

O valor total registrado nos pagamentos analisados foi de aproximadamente **R$ 16 milhões**.

Esses indicadores permitem investigar o desempenho operacional e financeiro da plataforma.

## Estrutura do projeto

- `data/raw/`: dados originais.
- `data/processed/`: dados processados e banco SQLite.
- `notebooks/`: notebooks de exploração e análise.
- Arquivo `.pbix`: dashboard desenvolvido no Power BI.

## Status

Projeto em desenvolvimento para portfólio de análise de dados.

## Fonte dos dados

Dataset público de e-commerce brasileiro da Olist, disponibilizado para fins de análise e aprendizado.
