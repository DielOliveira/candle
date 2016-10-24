json.extract! arquivo, :id, :nome, :caminho, :created_at, :updated_at
json.url arquivo_url(arquivo, format: :json)