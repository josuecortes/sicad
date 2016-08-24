json.extract! imovel, :id, :tipo, :logradouro, :numero, :bairro, :cidade, :created_at, :updated_at
json.url imovel_url(imovel, format: :json)