json.extract! agenda, :id, :data, :hora, :responsavel, :contato, :endereco, :created_at, :updated_at
json.url agenda_url(agenda, format: :json)