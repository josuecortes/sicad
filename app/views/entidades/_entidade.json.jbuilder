json.extract! entidade, :id, :nome, :data_criacao, :codigo, :created_at, :updated_at
json.url entidade_url(entidade, format: :json)