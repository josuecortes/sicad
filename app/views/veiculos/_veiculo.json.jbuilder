json.extract! veiculo, :id, :tipo, :placa, :proprietario, :contato, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)