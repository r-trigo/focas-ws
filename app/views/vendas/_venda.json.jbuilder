json.extract! venda, :id, :data, :nome_comprador, :receita, :created_at, :updated_at
json.url venda_url(venda, format: :json)