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

  def pessoas

    if current_user.tipo == "MASTER"

      if params[:usuario_id].blank?
        @usuario = nil
        @pessoas = Pessoa.all
      else
        @usuario = User.find(params[:usuario_id])
        @pessoas = Pessoa.do_usuario(@usuario.id)
      end


      if params[:bairro_id].blank?
        @bairro = nil
      else
        @bairro = Bairro.find(params[:bairro_id])
        @pessoas = @pessoas.do_bairro(@bairro.id)
      end
    
    else

      if params[:usuario_id].blank?
        @usuario = nil
        @pessoas = Pessoa.da_entidade(current_user.entidade_id)
      else
        @usuario = User.find(params[:usuario_id])
        @pessoas = Pessoa.da_entidade(current_user.entidade_id).do_usuario(@usuario.id)
      end


      if params[:bairro_id].blank?
        @bairro = nil
      else
        @bairro = Bairro.find(params[:bairro_id])
        @pessoas = @pessoas.da_entidade(current_user).do_bairro(@bairro.id)
      end

    end
   
  end

end
