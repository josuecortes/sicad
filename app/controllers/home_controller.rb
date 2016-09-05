class HomeController < ApplicationController
  def index
  	if current_user.tipo == "MASTER" 
  		@usuarios = User.all
  		@pessoas = Pessoa.all
  		@imoveis = Imovel.all
  		@veiculos = Veiculo.all
      @agendas = Agenda.where("data_hora >= ?",Time.now)
  	else
  		@usuarios = User.da_entidade(current_user.entidade_id)
  		@pessoas = Pessoa.da_entidade(current_user.entidade_id)
  		@imoveis = Imovel.da_entidade(current_user.entidade_id)
  		@veiculos = Veiculo.da_entidade(current_user.entidade_id)
      @agendas = Agenda.da_entidade(current_user.entidade_id).where("data_hora >= ?",Time.now)
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

  def imoveis
    if current_user.tipo == "MASTER"

      if params[:usuario_id].blank?
        @usuario = nil
        @imoveis = Imovel.all
      else
        @usuario = User.find(params[:usuario_id])
        @imoveis = Imovel.do_usuario(@usuario.id)
      end


      if params[:bairro_id].blank?
        @bairro = nil
      else
        @bairro = Bairro.find(params[:bairro_id])
        @imoveis = @imoveis.do_bairro(@bairro.id)
      end
    
    else

      if params[:usuario_id].blank?
        @usuario = nil
        @imoveis = Imovel.da_entidade(current_user.entidade_id)
      else
        @usuario = User.find(params[:usuario_id])
        @imoveis = Imovel.da_entidade(current_user.entidade_id).do_usuario(@usuario.id)
      end


      if params[:bairro_id].blank?
        @bairro = nil
      else
        @bairro = Bairro.find(params[:bairro_id])
        @imoveis = @imoveis.da_entidade(current_user).do_bairro(@bairro.id)
      end

    end
  end



  def veiculos
    if current_user.tipo == "MASTER"

      if params[:usuario_id].blank?
        @usuario = nil
        @veiculos = Veiculo.all
      else
        @usuario = User.find(params[:usuario_id])
        @veiculos = Veiculo.do_usuario(@usuario.id)
      end


      if params[:tipo].blank?
        @tipo = nil
      else
        @tipo = params[:tipo]
        @veiculos = @veiculos.do_tipo(@tipo)
      end
    
    else

      if params[:usuario_id].blank?
        @usuario = nil
        @veiculos = Veiculo.da_entidade(current_user.entidade_id)
      else
        @usuario = User.find(params[:usuario_id])
        @veiculos = Veiculo.da_entidade(current_user.entidade_id).do_usuario(@usuario.id)
      end


      if params[:tipo].blank?
        @tipo = nil
      else
        @tipo = params[:tipo]
        @veiculos = @veiculos.do_tipo(@tipo)
      end

    end
  end


end
