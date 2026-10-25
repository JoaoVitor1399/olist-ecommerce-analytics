from pathlib import Path
import pandas as pd

# Localiza a pasta dos dados originais
pasta_dados = Path("data/raw")

print("Python e Pandas funcionando!")
print(f"Pasta dos dados: {pasta_dados.resolve()}")

# Lista os arquivos CSV
arquivos = list(pasta_dados.glob("*.csv"))

print(f"\nQuantidade de arquivos CSV: {len(arquivos)}")

for arquivo in arquivos:
    print("-", arquivo.name)

# Testa a leitura da tabela de pedidos
arquivo_pedidos = pasta_dados / "olist_orders_dataset.csv"

if arquivo_pedidos.exists():
    pedidos = pd.read_csv(arquivo_pedidos)

    print("\nArquivo de pedidos lido com sucesso!")
    print("Quantidade de linhas:", len(pedidos))
    print("Quantidade de colunas:", len(pedidos.columns))
    print("\nPrimeiras cinco linhas:")
    print(pedidos.head())
else:
    print("\nArquivo de pedidos não encontrado.")