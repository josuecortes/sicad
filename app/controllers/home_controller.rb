class HomeController < ApplicationController
  def index
  	if current_user.tipo == "MASTER" 
  		@usuarios = User.all
  		@pessoas = Pessoa.all
  		@imoveis = Imovel.all
  		@veiculos = Veiculo.all
  	else
  		@usuarios = User.da_entidade(current_user.entidade_id)
  		@pessoas = Pessoa.da_entidade(current_user.entidade_id)
  		@imoveis = Imovel.da_entidade(current_user.entidade_id)
  		@veiculos = Veiculo.da_entidade(current_user.entidade_id)
  	end
  end

  def nao_autorizado
  end
end
